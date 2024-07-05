# Cilium Performance Test Setup

Label 5 nodes that will run the Vegeta traffic generator:

```bash
# Use 4 nodes for 30-ns, 5 nodes for 50-ns
NODE1=gke-gke-ambient-danehans-default-pool-43b8fead-0hs3
NODE2=gke-gke-ambient-danehans-default-pool-43b8fead-0jmr
NODE3=gke-gke-ambient-danehans-default-pool-43b8fead-1fht
NODE4=gke-gke-ambient-danehans-default-pool-43b8fead-32pn
NODE5=gke-gke-ambient-danehans-default-pool-43b8fead-4vkl
kubectl label node/$NODE1 node/$NODE2 node/$NODE3 node/$NODE4 node/$NODE5 node=loadgen
```

Taint the loadgen nodes:

```bash
for node in $(kubectl get nodes -l node=loadgen -o name); do
  kubectl taint nodes $node loadgen=true:NoSchedule
done
```

__Note:__ The loadgen deployment will add a toleration to the load testing pods.

## Verify Wireguard Support

SSH into a cluster node to verify Wireguard support:

```bash
gcloud container clusters get-credentials $GKE_CLUSTER_NAME --zone $GKE_CLUSTER_ZONE
gcloud compute ssh [NODE_NAME]
```

Once you're logged into the node, check the kernel version:

```bash
uname -r
```

WireGuard requires Linux kernel version 5.6 or higher. Ensure your kernel version meets this requirement:

```bash
lsmod | grep wireguard
```

If WireGuard is supported, you should see an output like this:

```bash
wireguard             208896  0
```

Wireguard verification is now complete. You can now exit the SSH session.

## Install Cilium

Install the [Cilium CLI](https://docs.cilium.io/en/latest/gettingstarted/k8s-install-default/#install-the-cilium-cli).

Set the following GKE cluster variables:

```bash
GKE_CLUSTER_NAME="gke-ambient-danehans"
GKE_CLUSTER_ZONE="us-west4-b"
```

Extract the Cluster CIDR to enable native routing (requires gcloud CLI):

```bash
NATIVE_CIDR="$(gcloud container clusters describe "${GKE_CLUSTER_NAME}" --zone "${GKE_CLUSTER_ZONE}" --format 'value(clusterIpv4Cidr)')"
echo $NATIVE_CIDR
```

Setup Helm repository:

```bash
helm repo add cilium https://helm.cilium.io/
helm repo update
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
    --set operator.replicas=1
```

__Note:__ Replace `cilium/cilium --version 1.15.6` with `./cilium` from path `{CILIUM_REPO_ROOT/install/kubernetes}` to use latest Cilium dev build.

Wait for the Cilium install to complete:

```bash
cilium status --wait
```

If your cluster was not created with the `node.cilium.io/agent-not-ready` node taint, then unmanaged pods need to be restarted manually:

```bash
kubectl get pods --all-namespaces -o custom-columns=NAMESPACE:.metadata.namespace,NAME:.metadata.name,HOSTNETWORK:.spec.hostNetwork --no-headers=true | grep '<none>' | awk '{print "-n "$1" "$2}' | xargs -L 1 -r kubectl delete pod
```

## Baseline Performance Test

Set the scale of the test:

```bash
# Options are 1, 5, 20, 30, 50
NUM=50
```

Deploy the tiered app:

```bash
kubectl apply -k tiered-app/$NUM-namespace-app/cilium
```

Wait for the tiered app rollouts to complete

```bash
for i in $(seq 1 $NUM); do
  kubectl rollout status deploy/tier-1-app-a -n ns-$i
  kubectl rollout status deploy/tier-2-app-a-v1 -n ns-$i
  kubectl rollout status deploy/tier-2-app-b-v1 -n ns-$i
  kubectl rollout status deploy/tier-3-app-a-v1 -n ns-$i
done
```

Verify that the tiered app was not scheduled to the loadgen nodes:

```bash
kubectl get po -A -o wide | grep tier | grep $NODE1
```

__Note:__ Repeat the above command for every loadgen node.

Deploy the Vegeta load generators:

```bash
kubectl apply -k loadgenerators/$NUM-loadgenerators
```

Wait for the load generator rollouts to complete

```bash
for i in $(seq 1 $NUM); do
  kubectl rollout status deploy/vegeta-ns-$i -n ns-$i
done
```

In a separate terminal, inspect pod resource usage:

```bash
for i in $(seq 1 $NUM); do
  kubectl top pods -n ns-$i --sort-by cpu
done
```

Do the same for the control plane pods:

```bash
watch kubectl top pods -n kube-system --sort-by cpu
```

Watch the logs of a Vegeta load generator until you see (~10-minutes):

```bash
$ kubectl logs -l app=vegeta -f -n ns-1
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.886ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.54ms, 3.564ms, 3.437ms, 4.032ms, 4.534ms, 5.917ms, 20.711ms
Bytes In      [total, mean]                     738291426, 2734.41
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000
Error Set:
```

Collect the Vegeta logs. In the `experiment-data/tail-logs.sh` script change the following variables:

```bash
# Define the range of namespaces
start_namespace=1
end_namespace=50

# Define the output file
output_file="450rps-10m-50-app-cilium-data-run-1.md"
```

Run the script to collect logs:

```bash
cd experiment-data && ./tail-logs.sh && cd ..
```

## Cilium L4/L7 Performance Testing

Install the Gateway API CRDs:

```bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/gateway-api/v1.0.0/config/crd/standard/gateway.networking.k8s.io_gatewayclasses.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/gateway-api/v1.0.0/config/crd/standard/gateway.networking.k8s.io_gateways.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/gateway-api/v1.0.0/config/crd/standard/gateway.networking.k8s.io_httproutes.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/gateway-api/v1.0.0/config/crd/standard/gateway.networking.k8s.io_referencegrants.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/gateway-api/v1.0.0/config/crd/experimental/gateway.networking.k8s.io_grpcroutes.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/gateway-api/v1.0.0/config/crd/experimental/gateway.networking.k8s.io_tlsroutes.yaml
```

Reinstall Cilium with Gateway API, mutual auth, and Wireguard encryption:

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
    --set gatewayAPI.enabled=true \
    --set authentication.mutual.spire.enabled=true \
    --set authentication.mutual.spire.install.enabled=true \
    --set authentication.mutual.spire.install.server.dataStorage.enabled=false \
    --set encryption.enabled=true \
    --set encryption.type=wireguard \
    --set encryption.nodeEncryption=true \
    --set operator.replicas=1
```

__Note:__ Replace `cilium/cilium --version 1.15.6` with `./cilium` from path `{CILIUM_REPO_ROOT/install/kubernetes}` to use latest Cilium dev build.

To ensure the Spire agent runs on all nodes, patch the DaemonSet to tolerate the `loadgen=true` taint:

```bash
kubectl patch daemonset spire-agent -n cilium-spire --type='json' -p='[{"op": "add", "path": "/spec/template/spec/tolerations/-", "value": {"key": "loadgen", "operator": "Equal", "value": "true", "effect": "NoSchedule"}}]'
```

Wait for the Cilium install to complete:

```bash
cilium status --wait
```

Verify Cilium is enabled with Wireguard encryption:

```bash
kubectl -n kube-system exec -ti ds/cilium -- cilium status | grep Encr
```

Check the status of the Spire server:

```bash
kubectl exec -n cilium-spire spire-server-0 -c spire-server -- /opt/spire/bin/spire-server healthcheck
```

TODO: Is the scale down/up of the tiered app really required since Cilium is already installed?

Scale down the tiered app deployments:

```bash
for i in $(seq 1 $NUM); do
  kubectl scale deploy/tier-1-app-a -n ns-$i --replicas=0
  kubectl scale deploy/tier-2-app-a-v1 -n ns-$i --replicas=0
  kubectl scale deploy/tier-2-app-b-v1 -n ns-$i --replicas=0
  kubectl scale deploy/tier-3-app-a-v1 -n ns-$i --replicas=0
done
```

Scale up the tiered app deployments:

```bash
for i in $(seq 1 $NUM); do
  kubectl scale deploy/tier-1-app-a -n ns-$i --replicas=1
  kubectl scale deploy/tier-2-app-a-v1 -n ns-$i --replicas=1
  kubectl scale deploy/tier-2-app-b-v1 -n ns-$i --replicas=1
  kubectl scale deploy/tier-3-app-a-v1 -n ns-$i --replicas=1
done
```

Wait for the tiered app rollouts to complete

```bash
for i in $(seq 1 $NUM); do
  kubectl rollout status deploy/tier-1-app-a -n ns-$i
  kubectl rollout status deploy/tier-2-app-a-v1 -n ns-$i
  kubectl rollout status deploy/tier-2-app-b-v1 -n ns-$i
  kubectl rollout status deploy/tier-3-app-a-v1 -n ns-$i
done
```

Apply an L4 network policy:

```bash
kubectl apply -k tiered-app/$NUM-namespace-app/cilium/l4-policy
```

Scale down the loadgen deployments:

```bash
for i in $(seq 1 $NUM); do
  kubectl scale deploy/vegeta-ns-$i -n ns-$i --replicas=0
done
```

Scale up the loadgen deployments:

```bash
for i in $(seq 1 $NUM); do
  kubectl scale deploy/vegeta-ns-$i -n ns-$i --replicas=1
done
```

Wait for the load generator rollouts to complete

```bash
for i in $(seq 1 $NUM); do
  kubectl rollout status deploy/vegeta-ns-$i -n ns-$i
done
```

Tail the logs of a loadgen deployment and rename/rerun the `tail-logs.sh` script.

Update the network policy for L7:

```bash
kubectl apply -k tiered-app/$NUM-namespace-app/cilium/l7-policy
```

Repeat the scale down, scale up, and rename/rerun the `tail-logs.sh` script.

## Cilium L7 with Mutual Auth Performance Testing

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

Update the l7 network policy to include mutual auth:

```bash
kubectl apply -k tiered-app/$NUM-namespace-app/cilium/mutual-auth
```

Repeat the scale down, scale up, and rerun the `tail-logs.sh` script.

### Manual Testing (Optional)

An example exec into Vegeta to run your own test:

```bash
kubectl --namespace ns-1 exec -it deploy/vegeta-ns-1 -c vegeta -- /bin/sh
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
