# Ambient Performance Testing

Label nodes that will run the Vegeta load generator:

```bash
# Use 4 nodes for 25/30-ns, 5 nodes for 50-ns
NODE1=gke-gke-ambient-danehans-default-pool-43b8fead-0hs3
NODE2=gke-gke-ambient-danehans-default-pool-43b8fead-0jmr
NODE3=gke-gke-ambient-danehans-default-pool-43b8fead-1fht
NODE4=gke-gke-ambient-danehans-default-pool-43b8fead-32pn
NODE5=gke-gke-ambient-danehans-default-pool-43b8fead-4vkl
kubectl label node/$NODE1 node/$NODE2 node/$NODE3 node/$NODE4 node/$NODE5 node=loadgen
```

Taint the load generator nodes:

```bash
for node in $(kubectl get nodes -l node=loadgen -o name); do
  kubectl taint nodes $node loadgen=true:NoSchedule
done
```

__Note:__ The Vegeta deployment will add a toleration to the load generator pods.

## Sample Application Installation

Set the number of namespaces to use for testing:

```bash
# Options are 1, 5, 20, 25, 30, 50
NUM=25
```

Deploy the tiered app:

```bash
kubectl apply -k tiered-app/$NUM-namespace-app/ambient
```

Wait for the tiered app rollout to complete:

```bash
for i in $(seq 1 $NUM); do
  kubectl rollout status deploy/tier-1-app-a -n ns-$i
  kubectl rollout status deploy/tier-1-app-b -n ns-$i
  kubectl rollout status deploy/tier-2-app-a-v1 -n ns-$i
  kubectl rollout status deploy/tier-2-app-b-v1 -n ns-$i
  kubectl rollout status deploy/tier-2-app-c-v1 -n ns-$i
  kubectl rollout status deploy/tier-2-app-d-v1 -n ns-$i
  kubectl rollout status deploy/tier-3-app-a-v1 -n ns-$i
  kubectl rollout status deploy/tier-3-app-b-v1 -n ns-$i
done
```

Verify that the tiered app was not scheduled to the load generator nodes:

```bash
kubectl get po -A -o wide | grep tier | grep $NODE1
```

__Note:__ Repeat the above step for each load generator node.

## Baseline Performance Testing

Deploy the Vegeta load generators:

```bash
kubectl apply -k loadgenerators/$NUM-loadgenerators
```

Wait for the load generator rollouts to complete:

```bash
for i in $(seq 1 $NUM); do
  kubectl rollout status deploy/vegeta1 -n ns-$i
  kubectl rollout status deploy/vegeta2 -n ns-$i
done
```

Watch logs of a vegeta load generator:

```bash
kubectl logs -l app=vegeta1 -f -n ns-1
```

Inspect the resource usage of the Istio control plane components:

```bash
kubectl top pods -n istio-system --sort-by cpu
```

## Run Performance Reports

Run the script to collect logs:

```bash
./scripts/run-all-reports.sh baseline-run-1
```

`baseline-run-1` is the prefix applied to the filename of the performance reports.

## Istio Installation

Add ambient helm repo:

```bash
helm repo add istio https://istio-release.storage.googleapis.com/charts
helm repo update
```

Install istio-base:

```bash
helm upgrade --install istio-base istio/base -n istio-system --version 1.22.1 --create-namespace
```

On GKE, Istio components with the system-node-critical priorityClassName can only be installed in
namespaces that have a ResourceQuota defined:

```bash
kubectl -n istio-system apply -f - <<EOF
apiVersion: v1
kind: ResourceQuota
metadata:
  name: gcp-critical-pods
  namespace: istio-system
spec:
  hard:
    pods: 1000
  scopeSelector:
    matchExpressions:
    - operator: In
      scopeName: PriorityClass
      values:
      - system-node-critical
EOF
```

Install Kubernetes Gateway CRDs:

```bash
kubectl get crd gateways.gateway.networking.k8s.io &> /dev/null || \
  { kubectl kustomize "github.com/kubernetes-sigs/gateway-api/config/crd?ref=v1.0.0" | kubectl apply -f -; }
```

Set your Istio image environment variables:

Option 1: Upstream `1.22.1` image:

```bash
REPO=docker.io/istio
ISTIO_IMAGE=1.22.1
```

Option 2: Solo `1.22.1-patch0` image:

```bash
REPO=us-docker.pkg.dev/gloo-mesh/istio-a9ee4fe9f69a
ISTIO_IMAGE=1.22.1-patch0-solo
```

Install istio-cni:

```bash
helm upgrade --install istio-cni istio/cni \
-n istio-system \
--version=1.22.1 \
-f -<<EOF
global:
  hub: $REPO
  tag: $ISTIO_IMAGE
profile: ambient
EOF
```

Wait for rollout to complete:

```bash
kubectl rollout status ds/istio-cni-node -n istio-system
```

Install istiod:

```bash
helm upgrade --install istiod istio/istiod \
-n istio-system \
--version=1.22.1 \
-f -<<EOF
global:
  hub: $REPO
  tag: $ISTIO_IMAGE
profile: ambient
EOF
```

Wait for rollout to complete:

```bash
kubectl rollout status deploy/istiod -n istio-system
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

TODO: Make waypoints configurable at install time: https://github.com/istio/istio/pull/51505

Install ztunnel:

```bash
helm upgrade --install ztunnel istio/ztunnel \
-n istio-system \
--version=1.22.1 \
-f -<<EOF
variant: distroless
hub: $REPO
tag: $ISTIO_IMAGE
EOF
```

Wait for rollout to complete:

```bash
kubectl rollout status ds/ztunnel -n istio-system
```

## Add the Sample Application to the Ambient Mesh

Deploy the tiered app into ambient mesh:

```bash
kubectl apply -k tiered-app/$NUM-namespace-app/ambient
```

## Baseline Performance Testing

Deploy the Vegeta load generators:

```bash
kubectl apply -k loadgenerators/$NUM-loadgenerators
```

Wait for the load generator rollouts to complete:

```bash
for i in $(seq 1 $NUM); do
  kubectl rollout status deploy/vegeta1 -n ns-$i
  kubectl rollout status deploy/vegeta2 -n ns-$i
done
```

Watch logs of a vegeta load generator:

```bash
kubectl logs -l app=vegeta1 -f -n ns-1
```

Inspect the resource usage of the Istio control plane components:

```bash
kubectl top pods -n istio-system --sort-by cpu
```

## Collect Logs

In the `experiment-data/tail-logs.sh` script change the following variables:

```bash
# Define the range of namespaces
start_namespace=1
end_namespace=50

# Define the output file
output_file="450rps-10m-30-app-istio-ambient-l4-run-data-run-1.md"
```

Run the script to collect logs:

```bash
cd experiment-data
./tail-logs.sh
```

## L4 Auth Performance Testing

Configure l4 auth policy:

```bash
kubectl apply -k tiered-app/$NUM-namespace-app/ambient/l4-policy
```

Scale down the load generator deployments:

```bash
for i in $(seq 1 $NUM); do
  kubectl scale deploy/vegeta1 -n ns-$i --replicas=0
  kubectl scale deploy/vegeta2 -n ns-$i --replicas=0
done
```

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
  kubectl rollout status deploy/vegeta-ns-$i -n ns-$i
done
```

Rename and rerun the `tail-logs.sh` script.

## L7 Auth Performance Testing

Configure waypoint proxy per namespace:

```bash
kubectl apply -k tiered-app/$NUM-namespace-app/ambient/waypoints
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

Scale up the load generator deployments:

```bash
for i in $(seq 1 $NUM); do
  kubectl scale deploy/vegeta-ns-$i -n ns-$i --replicas=1
done
```

Wait for the load generator rollouts to complete:

```bash
for i in $(seq 1 $NUM); do
  kubectl rollout status deploy/vegeta-ns-$i -n ns-$i
done
```

Inspect waypoint resource usage:

```bash
for i in $(seq 1 $NUM); do
  kubectl top pods -n ns-$i --sort-by cpu | grep waypoint
done
```

Inspect the resource usage of the Istio control plane components:

```bash
kubectl top pods -n istio-system --sort-by cpu
```

Rename and rerun the `tail-logs.sh` script.

## Manual Performance Testing (Optional)

Example exec into vegeta to run your own test:

```bash
kubectl --namespace ns-1 exec -it deploy/vegeta-ns-1 -c vegeta -- /bin/sh
```

Example test run:

```bash
echo "GET http://tier-1-app-a.ns-1.svc.cluster.local:8080" | vegeta attack -dns-ttl=0 -rate 500/1s -duration=2s | tee results.bin | vegeta report -type=text

echo "GET http://tier-1-app-a.ns-5.svc.cluster.local:8080" | vegeta attack -dns-ttl=0 -rate 500/1s -duration=2s | tee results.bin | vegeta report -type=text

echo "GET http://tier-1-app-a.ns-6.svc.cluster.local:8080" | vegeta attack -dns-ttl=0 -rate 500/1s -duration=2s | tee results.bin | vegeta report -type=text

echo "GET http://tier-1-app-a.ns-10.svc.cluster.local:8080" | vegeta attack -dns-ttl=0 -rate 500/1s -duration=2s | tee results.bin | vegeta report -type=text

echo "GET http://tier-1-app-a.ns-11.svc.cluster.local:8080" | vegeta attack -dns-ttl=0 -rate 500/1s -duration=2s | tee results.bin | vegeta report -type=text

echo "GET http://tier-1-app-a.ns-20.svc.cluster.local:8080" | vegeta attack -dns-ttl=0 -rate 500/1s -duration=2s | tee results.bin | vegeta report -type=text
```

## Addons Installation (Optional)

Deploy sample addons:

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
helm uninstall ztunnel -n istio-system
helm uninstall istiod -n istio-system
helm uninstall istio-cni -n istio-system
helm uninstall istio-base -n istio-system
kubectl kustomize "github.com/kubernetes-sigs/gateway-api/config/crd?ref=v1.0.0" | kubectl delete -f -;
```
