# Cilium Performance Testing

## Sample Application Installation

Set the number of namespaces to use for testing:

```bash
# Options are 1, 5, 20, 25, 30, 50
NUM=25
```

Deploy the tiered app:

```bash
kubectl apply -k tiered-app/$NUM-namespace-app/base
```

Wait for the tiered app rollout to complete:

```bash
for i in $(seq 1 $NUM); do
  kubectl rollout status deploy/tier-1-app-a -n ns-$i
  kubectl rollout status deploy/tier-1-app-b -n ns-$i
  kubectl rollout status deploy/tier-2-app-a -n ns-$i
  kubectl rollout status deploy/tier-2-app-b -n ns-$i
  kubectl rollout status deploy/tier-2-app-c -n ns-$i
  kubectl rollout status deploy/tier-2-app-d -n ns-$i
  kubectl rollout status deploy/tier-3-app-a -n ns-$i
  kubectl rollout status deploy/tier-3-app-b -n ns-$i
done
```

## Baseline Performance Testing

Deploy the Vegeta load generators:

```bash
kubectl apply -k loadgenerators/$NUM-loadgenerators/base
```

Wait for the load generator rollouts to complete:

```bash
for i in $(seq 1 $NUM); do
  kubectl rollout status deploy/vegeta1 -n ns-$i
  kubectl rollout status deploy/vegeta2 -n ns-$i
done
```

Tail the vegeta load generator logs until you see the following (10-minutes):

```bash
$ kubectl logs -l app=vegeta1 -f -n ns-1
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 1.942ms
Latencies     [min, mean, 50, 90, 95, 99, max]  1.63ms, 1.919ms, 1.899ms, 2.033ms, 2.115ms, 2.374ms, 25.578ms
Bytes In      [total, mean]                     325486616, 2712.39
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000
Error Set:
```

Generate the reports:

```bash
./scripts/run-all-reports.sh baseline-run-1
```

`baseline-run-1` is the prefix applied to the performance report filenames stored in the `out` directory.

Scale down the load generator deployments:

```bash
for i in $(seq 1 $NUM); do
  kubectl scale deploy/vegeta1 -n ns-$i --replicas=0
  kubectl scale deploy/vegeta2 -n ns-$i --replicas=0
done
```

## Install Cilium

Install the [Cilium CLI](https://docs.cilium.io/en/latest/gettingstarted/k8s-install-default/#install-the-cilium-cli).

Setup Helm repository:

```bash
helm repo add cilium https://helm.cilium.io/
helm repo update
```

__Option 1:__ GKE Cluster

Ensure the `GKE_CLUSTER_NAME` and `GKE_CLUSTER_ZONE` env vars are set from the GKE install guide.

Extract the Cluster CIDR to enable native routing (requires gcloud CLI):

```bash
NATIVE_CIDR="$(gcloud container clusters describe "${GKE_CLUSTER_NAME}" --zone "${GKE_CLUSTER_ZONE}" --format 'value(clusterIpv4Cidr)')"
echo $NATIVE_CIDR
```

Install Cilium __without__ Gateway API, mutual auth, and Wireguard encryption:

```bash
helm upgrade --install cilium cilium/cilium --version 1.15.6 \
  --namespace kube-system \
  --set nodeinit.enabled=true \
  --set nodeinit.reconfigureKubelet=true \
  --set nodeinit.removeCbrBridge=true \
  --set cni.binPath=/home/kubernetes/bin \
  --set gke.enabled=true \
  --set ipam.mode=kubernetes \
  --set ipv4NativeRoutingCIDR=$NATIVE_CIDR \
  --set kubeProxyReplacement=true \
  --set l2NeighDiscovery.enabled=false \
  --set operator.replicas=1
```

__Note:__ Replace `cilium/cilium --version 1.15.6` with `./cilium` from path `{CILIUM_REPO_ROOT/install/kubernetes}` to use latest Cilium dev build.

__Option 2:__ EKS Cluster:

Cilium will manage ENIs instead of VPC CNI, so the aws-node DaemonSet has to be patched to prevent conflict behavior:

```bash
kubectl -n kube-system patch daemonset aws-node --type='strategic' -p='{"spec":{"template":{"spec":{"nodeSelector":{"io.cilium/aws-node-enabled":"true"}}}}}'
```

Install Cilium __without__ Gateway API, mutual auth, and Wireguard encryption:

```bash
helm upgrade --install cilium cilium/cilium --version 1.15.6 \
  --namespace kube-system \
  --set eni.enabled=true \
  --set ipam.mode=eni \
  --set routingMode=native \
  --set kubeProxyReplacement=true \
  --set l2NeighDiscovery.enabled=false \
  --set operator.replicas=1
```

The `l2NeighDiscovery.enabled=false` option must be set when `kubeProxyReplacement=true` due to
[Issue #28858](https://github.com/cilium/cilium/issues/28858). Refer to the [upstream docs](https://docs.cilium.io/en/stable/network/kubernetes/kubeproxy-free/#neighbor-discovery) to learn more about neighbor discovery with KPR.

__Option 3:__ Kind Cluster:

This option should only be used for testing a single namespace, e.g. `NUM=1`.

Extract the cluster CIDR to enable native routing:

```bash
NATIVE_CIDR=$(kubectl get po/kube-controller-manager-kind-control-plane -n kube-system -o jsonpath='{.spec.containers[0].command}' | jq -r '.[]' | grep -- '--cluster-cidr=' | cut -d'=' -f2)
echo $NATIVE_CIDR
```

Install Cilium __without__ Gateway API, mutual auth, and IPSec encryption:

```bash
helm upgrade --install cilium cilium/cilium --version 1.15.6 \
  --namespace kube-system \
  --set routingMode=native \
  --set kubeProxyReplacement=true \
  --set ipv4NativeRoutingCIDR=$NATIVE_CIDR \
  --set autoDirectNodeRoutes=true \
  --set operator.replicas=1
```

__Note:__ Replace `cilium/cilium --version 1.15.6` with `./cilium` from path `{CILIUM_REPO_ROOT/install/kubernetes}`
to use latest Cilium dev build.

Wait for the Cilium install to complete:

```bash
cilium status --wait
```

Kube-proxy should be uninstalled when Cilium is configured with `kubeProxyReplacement=true`:

```bash
kubectl -n kube-system patch daemonset kube-proxy --type='strategic' -p='{"spec":{"template":{"spec":{"nodeSelector":{"io.cilium/kube-proxy-enabled":"true"}}}}}'
```

If your cluster was created without the `node.cilium.io/agent-not-ready` node taint, then unmanaged pods need to be restarted:

```bash
kubectl get pods --all-namespaces -o custom-columns=NAMESPACE:.metadata.namespace,NAME:.metadata.name,HOSTNETWORK:.spec.hostNetwork --no-headers=true | grep '<none>' | awk '{print "-n "$1" "$2}' | xargs -L 1 -r kubectl delete pod
```

## Cilium Baseline Performance Test

Scale up the load generator deployments:

```bash
for i in $(seq 1 $NUM); do
  kubectl scale deploy/vegeta1 -n ns-$i --replicas=1
  kubectl scale deploy/vegeta2 -n ns-$i --replicas=1
done
```

Wait for the load generator rollouts to complete:

```bash
for i in $(seq 1 $NUM); do
  kubectl rollout status deploy/vegeta1 -n ns-$i
  kubectl rollout status deploy/vegeta2 -n ns-$i
done
```

Tail the vegeta load generator logs until you see the following (10-minutes):

```bash
$ kubectl logs -l app=vegeta1 -f -n ns-1
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 1.942ms
Latencies     [min, mean, 50, 90, 95, 99, max]  1.63ms, 1.919ms, 1.899ms, 2.033ms, 2.115ms, 2.374ms, 25.578ms
Bytes In      [total, mean]                     325486616, 2712.39
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000
Error Set:
```

Generate the reports:

```bash
./scripts/run-all-reports.sh cilium-baseline-run-1
```

`cilium-baseline-run-1` is the prefix applied to the performance report filenames stored in the `out` directory.

Scale down the load generator deployments:

```bash
for i in $(seq 1 $NUM); do
  kubectl scale deploy/vegeta1 -n ns-$i --replicas=0
  kubectl scale deploy/vegeta2 -n ns-$i --replicas=0
done
```

## Cilium Encryption Testing

Test IPSec or Wireguard encryption.

__Option 1:__ GKE with Wireguard encryption:

```bash
helm upgrade --install cilium cilium/cilium --version 1.15.6 \
  --namespace kube-system \
  --set nodeinit.enabled=true \
  --set nodeinit.reconfigureKubelet=true \
  --set nodeinit.removeCbrBridge=true \
  --set cni.binPath=/home/kubernetes/bin \
  --set gke.enabled=true \
  --set ipam.mode=kubernetes \
  --set ipv4NativeRoutingCIDR=$NATIVE_CIDR \
  --set kubeProxyReplacement=true \
  --set l2NeighDiscovery.enabled=false \
  --set operator.replicas=1 \
  --set encryption.enabled=true \
  --set encryption.type=wireguard
```

Cilium with IPSec on GKE does not work. Cilium cannot communicate with Kubelet due to:
`error dialing backend: dial tcp 10.182.0.66:10250: i/o timeout`.

__Option 2:__ EKS with IPSec encryption:

Create the IPSec pre shared keys and store them as a secret:

```bash
kubectl create secret -n kube-system generic cilium-ipsec-keys \
    --from-literal=keys="3+ rfc4106(gcm(aes)) $(echo $(dd if=/dev/urandom count=20 bs=1 2> /dev/null | xxd -p -c 64)) 128"
```

__Note:__ The `+`  in the above command indicates per tunnel keys are being used instead of the insecure global key.

Update the Cilium config:

```bash
helm upgrade --install cilium cilium/cilium --version 1.15.6 \
  --namespace kube-system \
  --set eni.enabled=true \
  --set ipam.mode=eni \
  --set routingMode=native \
  --set operator.replicas=1 \
  --set kubeProxyReplacement=true \
  --set encryption.enabled=true \
  --set encryption.type=ipsec
```

__Option 3:__ EKS with Wireguard encryption:

Update the Cilium config:

```bash
helm upgrade ---install cilium cilium/cilium --version 1.15.6 \
  --namespace kube-system \
  --set eni.enabled=true \
  --set ipam.mode=eni \
  --set routingMode=native \
  --set operator.replicas=1 \
  --set encryption.enabled=true \
  --set encryption.type=wireguard
```

Wait for Cilium to be ready:

```bash
cilium status --wait
```

Verify encryption is enabled:

```bash
kubectl -n kube-system exec -it ds/cilium -- cilium status | grep Encryption
```

Scale up the load generator deployments:

```bash
for i in $(seq 1 $NUM); do
  kubectl scale deploy/vegeta1 -n ns-$i --replicas=1
  kubectl scale deploy/vegeta2 -n ns-$i --replicas=1
done
```

Wait for the load generator rollouts to complete

```bash
for i in $(seq 1 $NUM); do
  kubectl rollout status deploy/vegeta1 -n ns-$i
  kubectl rollout status deploy/vegeta2 -n ns-$i
done
```

Tail the vegeta load generator logs until you see the following (10-minutes):

```bash
$ kubectl logs -l app=vegeta1 -f -n ns-1
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 1.942ms
Latencies     [min, mean, 50, 90, 95, 99, max]  1.63ms, 1.919ms, 1.899ms, 2.033ms, 2.115ms, 2.374ms, 25.578ms
Bytes In      [total, mean]                     325486616, 2712.39
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000
Error Set:
```

Generate the reports:

```bash
./scripts/run-all-reports.sh cilium-encryption-run-1
```

`cilium-encryption-run-1` is the prefix applied to the performance report filenames stored in the `out` directory.

Scale down the load generator deployments:

```bash
for i in $(seq 1 $NUM); do
  kubectl scale deploy/vegeta1 -n ns-$i --replicas=0
  kubectl scale deploy/vegeta2 -n ns-$i --replicas=0
done
```

## Cilium Encryption with L4 Network Policy Performance Testing

This test adds a L4 network policy to each hop of the 3-tier app.

Apply an L4 network policy:

```bash
kubectl apply -k tiered-app/$NUM-namespace-app/cilium/l4-policy
```

Scale up the load generator deployments:

```bash
for i in $(seq 1 $NUM); do
  kubectl scale deploy/vegeta1 -n ns-$i --replicas=1
  kubectl scale deploy/vegeta2 -n ns-$i --replicas=1
done
```

Wait for the load generator rollouts to complete

```bash
for i in $(seq 1 $NUM); do
  kubectl rollout status deploy/vegeta1 -n ns-$i
  kubectl rollout status deploy/vegeta2 -n ns-$i
done
```

Tail the vegeta load generator logs until you see the following (10-minutes):

```bash
$ kubectl logs -l app=vegeta1 -f -n ns-1
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 1.942ms
Latencies     [min, mean, 50, 90, 95, 99, max]  1.63ms, 1.919ms, 1.899ms, 2.033ms, 2.115ms, 2.374ms, 25.578ms
Bytes In      [total, mean]                     325486616, 2712.39
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000
Error Set:
```

Generate the reports:

```bash
./scripts/run-all-reports.sh cilium-encryption-l4-net-policy-run-1
```

Scale down the load generator deployments:

```bash
for i in $(seq 1 $NUM); do
  kubectl scale deploy/vegeta1 -n ns-$i --replicas=0
  kubectl scale deploy/vegeta2 -n ns-$i --replicas=0
done
```

## Cilium Encryption with L4 Network Policy and Mutual Auth Performance Testing

This test updates the L4 network policy from the previous test to include mutual auth.

Update Cilium with mutual auth:

```bash
helm upgrade cilium/cilium --version 1.15.6 \
  --namespace kube-system \
  --reuse-values \
  --set authentication.mutual.spire.enabled=true \
  --set authentication.mutual.spire.install.enabled=true \
  --set authentication.mutual.spire.install.server.dataStorage.enabled=false
```

To ensure the Spire agent runs on all nodes, patch the DaemonSet to tolerate taint `loadgen=true`:

```bash
kubectl patch daemonset spire-agent -n cilium-spire --type='json' -p='[{"op": "add", "path": "/spec/template/spec/tolerations/-", "value": {"key": "loadgen", "operator": "Equal", "value": "true", "effect": "NoSchedule"}}]'
```

Wait for the Cilium install to complete:

```bash
cilium status --wait
```

Check the status of the Spire server:

```bash
kubectl exec -n cilium-spire spire-server-0 -c spire-server -- /opt/spire/bin/spire-server healthcheck
```

Verify that the Cilium agent and operator have Identities on the SPIRE server:

```bash
kubectl exec -n cilium-spire spire-server-0 -c spire-server -- /opt/spire/bin/spire-server entry show -parentID spiffe://spiffe.cilium/ns/cilium-spire/sa/spire-agent
```

Get the Cilium Identity of a tier-1 app pod:

```bash
ID=$(kubectl get cep -l app=tier-1-app-a -n ns-1 -o=jsonpath='{.items[0].status.identity.id}')
echo $ID
```

Check if a SPIFFE ID for the `tier-1-app-a` is registered with the SPIRE server:

```bash
kubectl exec -n cilium-spire spire-server-0 -c spire-server -- /opt/spire/bin/spire-server entry show -spiffeID spiffe://spiffe.cilium/identity/$ID
```

Add mutual auth to the L4 CCNPs:

```bash
for policy in tier-1-a tier-1-b tier-2-a tier-2-b tier-2-c tier-2-d tier-3-a tier-3-b; do
  kubectl patch ccnp $policy --type=json -p '[{"op": "add", "path": "/spec/ingress/0/authentication", "value": {"mode": "required"}}]'
done
```

Scale up the load generator deployments:

```bash
for i in $(seq 1 $NUM); do
  kubectl scale deploy/vegeta1 -n ns-$i --replicas=1
  kubectl scale deploy/vegeta2 -n ns-$i --replicas=1
done
```

Wait for the load generator rollouts to complete

```bash
for i in $(seq 1 $NUM); do
  kubectl rollout status deploy/vegeta1 -n ns-$i
  kubectl rollout status deploy/vegeta2 -n ns-$i
done
```

Tail the vegeta load generator logs until you see the following (10-minutes):

```bash
$ kubectl logs -l app=vegeta1 -f -n ns-1
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 1.942ms
Latencies     [min, mean, 50, 90, 95, 99, max]  1.63ms, 1.919ms, 1.899ms, 2.033ms, 2.115ms, 2.374ms, 25.578ms
Bytes In      [total, mean]                     325486616, 2712.39
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000
Error Set:
```

Generate the reports:

```bash
./scripts/run-all-reports.sh cilium-encryption-l4-net-policy-run-1
```

Scale down the load generator deployments:

```bash
for i in $(seq 1 $NUM); do
  kubectl scale deploy/vegeta1 -n ns-$i --replicas=0
  kubectl scale deploy/vegeta2 -n ns-$i --replicas=0
done
```

## Cilium Encryption with L7 Network Policy Performance Testing

Update the network policy by removing mutual auth and adding L7:

```bash
kubectl apply -k tiered-app/$NUM-namespace-app/cilium/l7-policy
```

Scale up the load generator deployments:

```bash
for i in $(seq 1 $NUM); do
  kubectl scale deploy/vegeta1 -n ns-$i --replicas=1
  kubectl scale deploy/vegeta2 -n ns-$i --replicas=1
done
```

Wait for the load generator rollouts to complete

```bash
for i in $(seq 1 $NUM); do
  kubectl rollout status deploy/vegeta1 -n ns-$i
  kubectl rollout status deploy/vegeta2 -n ns-$i
done
```

Tail the vegeta load generator logs until you see the following (10-minutes):

```bash
$ kubectl logs -l app=vegeta1 -f -n ns-1
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 1.942ms
Latencies     [min, mean, 50, 90, 95, 99, max]  1.63ms, 1.919ms, 1.899ms, 2.033ms, 2.115ms, 2.374ms, 25.578ms
Bytes In      [total, mean]                     325486616, 2712.39
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000
Error Set:
```

Generate the reports:

```bash
./scripts/run-all-reports.sh cilium-encryption-l7-net-policy-run-1
```

## Cilium Encryption with L7 Network Policy and Mutual Auth Performance Testing

Add mutual auth to the above L7 CCNPs:

```bash
for policy in tier-1-a tier-1-b tier-2-a tier-2-b tier-2-c tier-2-d tier-3-a tier-3-b; do
  kubectl patch ccnp $policy --type=json -p '[{"op": "add", "path": "/spec/ingress/0/authentication", "value": {"mode": "required"}}]'
done
```

Scale up the load generator deployments:

```bash
for i in $(seq 1 $NUM); do
  kubectl scale deploy/vegeta1 -n ns-$i --replicas=1
  kubectl scale deploy/vegeta2 -n ns-$i --replicas=1
done
```

Wait for the load generator rollouts to complete

```bash
for i in $(seq 1 $NUM); do
  kubectl rollout status deploy/vegeta1 -n ns-$i
  kubectl rollout status deploy/vegeta2 -n ns-$i
done
```

Tail the vegeta load generator logs until you see the following (10-minutes):

```bash
$ kubectl logs -l app=vegeta1 -f -n ns-1
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 1.942ms
Latencies     [min, mean, 50, 90, 95, 99, max]  1.63ms, 1.919ms, 1.899ms, 2.033ms, 2.115ms, 2.374ms, 25.578ms
Bytes In      [total, mean]                     325486616, 2712.39
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000
Error Set:
```

Generate the reports:

```bash
./scripts/run-all-reports.sh cilium-encryption-l7-net-policy-mutual-auth-run-1
```

## Cilium GAMMA Performance Testing

Test Cilium with [GAMMA](https://docs.cilium.io/en/latest/network/servicemesh/gateway-api/gamma/#gamma-support) with optional
L4 and L7 network policies.

Install the Gateway API CRDs:

```bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/gateway-api/v1.0.0/config/crd/standard/gateway.networking.k8s.io_gatewayclasses.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/gateway-api/v1.0.0/config/crd/standard/gateway.networking.k8s.io_gateways.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/gateway-api/v1.0.0/config/crd/standard/gateway.networking.k8s.io_httproutes.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/gateway-api/v1.0.0/config/crd/standard/gateway.networking.k8s.io_referencegrants.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/gateway-api/v1.0.0/config/crd/experimental/gateway.networking.k8s.io_grpcroutes.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/gateway-api/v1.0.0/config/crd/experimental/gateway.networking.k8s.io_tlsroutes.yaml
```

Update the Cilium install with Gateway API:

```bash
helm upgrade cilium ./cilium \
  --namespace kube-system \
  --reuse-values \
  --set gatewayAPI.enabled=true
```

Update the tiered apps with a GAMMA producer services and HTTPRoutes:

```bash
kubectl apply -k tiered-app/$NUM-namespace-app/cilium/gamma
```

Optionally, add a L4 network policy:

```bash
kubectl apply -k tiered-app/$NUM-namespace-app/cilium/gamma/l4-policy
```

TODO: Get L7 policies to work with GAMMA.

Update the Vegeta load generators to use the GAMMA service URL:

```bash
kubectl apply -k loadgenerators/$NUM-loadgenerators/cilium
```

Scale up the load generator deployments:

```bash
for i in $(seq 1 $NUM); do
  kubectl scale deploy/vegeta1 -n ns-$i --replicas=1
  kubectl scale deploy/vegeta2 -n ns-$i --replicas=1
done
```

Wait for the load generator rollouts to complete

```bash
for i in $(seq 1 $NUM); do
  kubectl rollout status deploy/vegeta1 -n ns-$i
  kubectl rollout status deploy/vegeta2 -n ns-$i
done
```

Tail the vegeta load generator logs until you see the following (10-minutes):

```bash
$ kubectl logs -l app=vegeta1 -f -n ns-1
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 1.942ms
Latencies     [min, mean, 50, 90, 95, 99, max]  1.63ms, 1.919ms, 1.899ms, 2.033ms, 2.115ms, 2.374ms, 25.578ms
Bytes In      [total, mean]                     325486616, 2712.39
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000
Error Set:
```

Generate the reports:

```bash
./scripts/run-all-reports.sh cilium-gamma-run-1
```

## Optional Commands

If you did not install your cluster with the `--node-taints node.cilium.io/agent-not-ready=true:NoExecute`
taint, then you can deploy the sample application for baseline testing. Otherwise, remove the taint from nodes:

```bash
kubectl taint nodes --all node.cilium.io/agent-not-ready=true:NoExecute-
```

Verify that the tiered app was not scheduled to the load generator nodes:

```bash
kubectl get po -A -o wide | grep tier | grep $NODE1
```

__Note:__ Repeat the above step for each load generator node.

## Manual Testing (Optional)

An example exec into Vegeta to run your own test:

```bash
kubectl --namespace ns-1 exec -it deploy/vegeta1 -c vegeta -- /bin/sh
```

test run:

```bash
echo "GET http://tier-1-app-a.ns-1.svc.cluster.local:8080" | vegeta attack -dns-ttl=0 -rate 500/1s -duration=2s | tee results.bin | vegeta report -type=text

echo "GET http://tier-1-app-a.ns-5.svc.cluster.local:8080" | vegeta attack -dns-ttl=0 -rate 500/1s -duration=2s | tee results.bin | vegeta report -type=text

echo "GET http://tier-1-app-a.ns-6.svc.cluster.local:8080" | vegeta attack -dns-ttl=0 -rate 500/1s -duration=2s | tee results.bin | vegeta report -type=text

echo "GET http://tier-1-app-a.ns-10.svc.cluster.local:8080" | vegeta attack -dns-ttl=0 -rate 500/1s -duration=2s | tee results.bin | vegeta report -type=text

echo "GET http://tier-1-app-a.ns-11.svc.cluster.local:8080" | vegeta attack -dns-ttl=0 -rate 500/1s -duration=2s | tee results.bin | vegeta report -type=text

echo "GET http://tier-1-app-a.ns-20.svc.cluster.local:8080" | vegeta attack -dns-ttl=0 -rate 500/1s -duration=2s | tee results.bin | vegeta report -type=text
```

## Uninstall

Uninstall Cilium:

```bash
helm uninstall cilium -n kube-system
kubectl kustomize "github.com/kubernetes-sigs/gateway-api/config/crd?ref=v1.0.0" | kubectl delete -f -;
```
