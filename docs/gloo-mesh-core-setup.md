## Ambient Performance Test Setup

Label nodes that will run the vegeta traffic generator:

```bash
# Use 4 nodes for 30-ns, 5 nodes for 50-ns
NODE1=gke-gke-ambient-danehans-default-pool-43b8fead-0hs3
NODE2=gke-gke-ambient-danehans-default-pool-43b8fead-0jmr
NODE3=gke-gke-ambient-danehans-default-pool-43b8fead-1fht
NODE4=gke-gke-ambient-danehans-default-pool-43b8fead-32pn
NODE5=gke-gke-ambient-danehans-default-pool-43b8fead-4vkl
kubectl label node/$NODE1 node/$NODE2 node/$NODE3 node/$NODE4 node/$NODE5 node=loadgen
```

Taint the load gen nodes:

```bash
for node in $(kubectl get nodes -l node=loadgen -o name); do
  kubectl taint nodes $node loadgen=true:NoSchedule
done
```

__Note:__ The load gen deployment will add a toleration to the load testing pods.

## GMC Installation

Install GMC using the [single cluster quickstart](https://docs.solo.io/gloo-mesh-core/main/quickstart/single/) guide.
Stop at the [Deploy Istio](https://docs.solo.io/gloo-mesh-core/main/quickstart/single/#istio) section of the guide.

## Istio Ambient Installation

Install Istio Ambient using the [GMC install guide](https://docs.solo.io/gloo-mesh-core/main/istio/ambient/install/).

You must use the `1.22.1-patch0-solo` Istio image:

```bash
export ISTIO_IMAGE=1.22.1-patch0-solo
```

Use the following ILM instead of the one in the guide. Make sure your all env vars from the guide are set:

```bash
kubectl apply --context $MGMT_CONTEXT -f- <<EOF
apiVersion: admin.gloo.solo.io/v2
kind: IstioLifecycleManager
metadata:
  name: istiod-control-plane
  namespace: gloo-mesh
spec:
  installations:
    - clusters:
      - defaultRevision: true
        name: $REMOTE_CLUSTER
      skipUpgradeValidation: true
      revision: $REVISION
      istioOperatorSpec:
        hub: $REPO
        tag: $ISTIO_IMAGE
        profile: ambient
        meshConfig:
          trustDomain: cluster.local
        components:
          cni:
            enabled: true
        values:
          pilot:
            env:
              VERIFY_CERTIFICATE_AT_CLIENT: false
              PILOT_ENABLE_CDS_CACHE: false
          ztunnel:
            env:
              L7_ENABLED: true
            resources:
              requests:
                cpu: 500m
                memory: 512Mi
            logLevel: error
EOF
```

Wait for rollout of the Istio control plane components to complete:

```bash
kubectl rollout status ds/istio-cni-node -n istio-system
kubectl rollout status deploy/istiod-${REVISION} -n istio-system
kubectl rollout status ds/ztunnel-${REVISION} -n istio-system
```

Install Kubernetes Gateway CRDs:

```bash
kubectl get crd gateways.gateway.networking.k8s.io &> /dev/null || \
  { kubectl kustomize "github.com/kubernetes-sigs/gateway-api/config/crd?ref=v1.0.0" | kubectl apply -f -; }
```

Configure a waypoint proxy per namespace. First, add waypoint pod anti-affinity to the
sidecar ConfigMap `waypoint.deployment.spec.template.spec`:

```bash
              affinity:
                podAntiAffinity:
                  preferredDuringSchedulingIgnoredDuringExecution:
                  - weight: 100
                    podAffinityTerm:
                      labelSelector:
                        matchExpressions:
                        - key: service.istio.io/canonical-name
                          operator: In
                          values:
                          - waypoint
                      namespaceSelector: {}
                      topologyKey: "kubernetes.io/hostname"
```

TODO: Make Waypoint configurable through Helm: https://github.com/istio/istio/pull/51505

## Performance Test Setup

Set the number of namespaces to use for testing:

```bash
# Options are 1, 5, 20, 30, 50
NUM=50
```

Deploy the tiered-app into ambient mesh:

```bash
kubectl apply -k tiered-app/$NUM-namespace-app/ambient
```

Wait for the tiered app rollout to complete:

```bash
for i in $(seq 1 $NUM); do
  kubectl rollout status deploy/tier-1-app-a -n ns-$i
  kubectl rollout status deploy/tier-2-app-a-v1 -n ns-$i
  kubectl rollout status deploy/tier-2-app-b-v1 -n ns-$i
  kubectl rollout status deploy/tier-3-app-a-v1 -n ns-$i
done
```

Verify that the tier'd app was not scheduled to the load generator nodes:

```bash
kubectl get po -A -o wide | grep tier | grep $NODE1
```

__Note:__ Repeat the above step for each load gen node.

Deploy the vegeta load generators:

```bash
kubectl apply -k loadgenerators/$NUM-loadgenerators
```

Wait for the load generators rollout to complete:

```bash
for i in $(seq 1 $NUM); do
  kubectl rollout status deploy/vegeta-ns-$i -n ns-$i
done
```

Watch logs of vegeta load generator:

```bash
kubectl logs -l app=vegeta -f -n ns-1
```

Inspect the resource usage of the Istio control plane components:

```bash
kubectl top pods -n istio-system --sort-by cpu
```

## collect logs
In the `experiment-data/tail-logs.sh` script change the following variables
```
# Define the range of namespaces
start_namespace=1
end_namespace=50

# Define the output file
output_file="450rps-10m-30-app-istio-ambient-l4-run-data-run-1.md"
```

Run the script to collect logs:
```
cd experiment-data
./tail-logs.sh
```

Configure l4 auth policy:

```bash
kubectl apply -k tiered-app/$NUM-namespace-app/ambient/l4-policy
```

Install a waypoint per tier'd app namespace:

```bash
kubectl apply -k tiered-app/$NUM-namespace-app/ambient/waypoints
```

Label the waypoint Gateways with the Istio revision so they are managed by Istiod:

```bash
for i in $(seq 1 $NUM); do
  kubectl label gtw/waypoint istio.io/rev=${REVISION} -n ns-$i
done
```

Check the status of the waypoint deployments:

```bash
for i in $(seq 1 $NUM); do
  kubectl rollout status deploy/waypoint -n ns-$i
done
```

Configure l7 auth policy:

```bash
kubectl apply -k tiered-app/$NUM-namespace-app/ambient/l7-policy
```

Scale down the load generator deployments:

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

Inspect waypoint resource usage:

```bash
for i in $(seq 1 $NUM); do
  kubectl top pods -n ns-$i --sort-by cpu | grep waypoint
done
```

## Helpful Commands

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

Check pod-to-node distribution:

```bash
kubectl get pods --all-namespaces -o wide | grep Running | awk '{print $8}' | sort | uniq -c | sort -nr
```

Check how many nodes in the cluster are ready:

```bash
kubectl get nodes | grep -c 'Ready'
```

## Manual Performance Testing (Optional)

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

## Addons Installation (Optional)

Deploy the sample addons:

```bash
kubectl apply -k addons
```

Port forward to Grafana:

```bash
kubectl port-forward svc/grafana -n istio-system 3000:3000
```

Port forward to Kiali:

```bash
kubectl port-forward svc/kiali -n istio-system 20001:20001
```

## Cleanup

When testing is complete, uninstall Istio:

```bash
helm uninstall ztunnel -n kube-system
helm uninstall istiod -n istio-system
helm uninstall istio-cni -n kube-system
helm uninstall istio-base -n istio-system
kubectl kustomize "github.com/kubernetes-sigs/gateway-api/config/crd?ref=v1.0.0" | kubectl delete -f -;
```
