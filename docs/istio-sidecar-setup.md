# Ambient Performance Test Setup

## add Istio helm repo
```bash
helm repo add istio https://istio-release.storage.googleapis.com/charts
helm repo update
```

## install istio-base
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

## install istiod
```bash
helm upgrade --install istiod istio/istiod \
-n istio-system \
--version=1.22.1 \
-f -<<EOF
global:
  hub: $REPO
  tag: $ISTIO_IMAGE
meshConfig:
  accessLogFile: /dev/stdout
  enableAutoMtls: true
  defaultConfig:
    holdApplicationUntilProxyStarts: true
    proxyMetadata:
      ISTIO_META_DNS_CAPTURE: "true"
      ISTIO_META_DNS_AUTO_ALLOCATE: "true"
  outboundTrafficPolicy:
    mode: ALLOW_ANY
EOF
```

Wait for rollout to complete
```bash
kubectl rollout status deploy/istiod -n istio-system
```

# Configure an App

## deploy client into istio mesh
```bash
kubectl apply -k client/sidecar
```

## deploy httpbin into istio mesh
```bash
kubectl apply -k httpbin/sidecar
```

## exec into sleep client and curl httpbin /get endpoint to verify mTLS
```bash
kubectl exec -it deploy/sleep -n client -c sleep sh

curl httpbin.httpbin.svc.cluster.local:8000/get
```

## remove httpbin
```bash
kubectl delete -k httpbin/sidecar
```


# Set up the Performance Test

## deploy 50 namespace tiered-app into istio mesh
```bash
kubectl apply -k tiered-app/50-namespace-app/sidecar
```

## exec into sleep client and curl tiered-app
```bash
kubectl exec -it deploy/sleep -n client sh

curl http://tier-1-app-a.ns-1.svc.cluster.local:8080
```

## deploy 50 vegeta loadgenerators
```bash
kubectl apply -k loadgenerators/50-loadgenerators
```

## watch logs of vegeta loadgenerator
```bash
kubectl logs -l app=vegeta -f -n ns-1
```

## watch top pods
```bash
watch kubectl top pods -n ns-1
watch kubectl top pods -n kube-system --sort-by cpu
```

## collect logs
In the `experiment-data/tail-logs.sh` script change the following variables
```
# Define the range of namespaces
start_namespace=1
end_namespace=50

# Define the output file
output_file="450rps-10m-50-app-linkerd-default-istio-resources-data-run-1.md"
```

Run the script to collect logs:
```
cd experiment-data
./tail-logs.sh
```

## example exec into vegeta to run your own test (optional)
```bash
kubectl --namespace ns-1 exec -it deploy/vegeta -c vegeta -- /bin/sh
```

test run:
```bash
echo "GET http://tier-1-app-a.ns-1.svc.cluster.local:8080" | vegeta attack -dns-ttl=0 -rate 500/1s -duration=2s | tee results.bin | vegeta report -type=text
```

## deploy sample addons (optional)
```bash
kubectl apply -k addons
```

## port forward to grafana (optional)
```bash
kubectl port-forward svc/grafana -n istio-system 3000:3000
```

## port forward to kiali (optional)
```bash
kubectl port-forward svc/kiali -n istio-system 20001:20001
```

## uninstall
```bash
helm uninstall istiod -n istio-system
helm uninstall istio-base -n istio-system
```