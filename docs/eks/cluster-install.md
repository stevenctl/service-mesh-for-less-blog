# Create an EKS Cluster

## Prerequisites

Ensure you have the following tools in your working environment:

- [kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl)
- [eksctl](https://docs.aws.amazon.com/eks/latest/userguide/getting-started-eksctl.html)
- [AWS Command Line Interface](https://aws.amazon.com/cli/) (AWS CLI)
- [helm](https://helm.sh/docs/intro/install/)

## Node Requirements

### 50 Namespaces

- 26 total nodes (21 workload and 5 loadgen) for L4 auth.
- 30 total nodes (25 workload and 5 loadgen) for L7 auth with 50 waypoints.

### 25 Namespaces

- 25 total nodes (21 workload and 4 loadgen) for all test cases other than Istio sidecar.
- 27 total nodes (23 workload and 4 loadgen) for L7 auth with 50 waypoints.

## Create Cluster

Set AWS environment variables:

```bash
export AWS_ACCESS_KEY_ID=<your key id>
export AWS_SECRET_ACCESS_KEY=<your secret>
export AWS_SESSION_TOKEN=<your session token>
```

Set the cluster environment variables:

```bash
export CLUSTER_NAME="solo-system-dhansen-7616"
export REGION="us-west-2"
export NUM_NODES="25"
export INSTANCE="m5.2xlarge"
```

Create the EKS cluster using `eksctl` with worker nodes in a single availability zone:

```bash
cat << EOF > clusterconfig.yaml
apiVersion: eksctl.io/v1alpha5
kind: ClusterConfig
metadata:
  name: ${CLUSTER_NAME}
  region: ${REGION}
availabilityZones:
- ${REGION}a
- ${REGION}b
- ${REGION}c
managedNodeGroups:
- name: ng-1
  desiredCapacity: ${NUM_NODES}
  instanceType: ${INSTANCE}
  availabilityZones:
  - ${REGION}a
  ssh:
    allow: true
EOF
eksctl create cluster -f clusterconfig.yaml
```

__Note:__ Adding the following taint to the `managedNodeGroups` setion of the eksctl config will ensure
application pods are not scheduled/executed until Cilium is deployed. This was not enabled above since the
first step in testing is to create a baseline.

```bash
  taints:
   - key: "node.cilium.io/agent-not-ready"
     value: "true"
     effect: "NoExecute"
```

## Taint Load Generator Nodes

Label nodes that will run the Vegeta load generator:

```bash
# Use 4 nodes for 25/30-ns, 5 nodes for 50-ns
NODE1=gke-gke-ambient-danehans-default-pool-43b8fead-0hs3
NODE2=gke-gke-ambient-danehans-default-pool-43b8fead-0jmr
NODE3=gke-gke-ambient-danehans-default-pool-43b8fead-1fht
NODE4=gke-gke-ambient-danehans-default-pool-43b8fead-32pn
NODE5=gke-gke-ambient-danehans-default-pool-43b8fead-4vkl
kubectl label node/$NODE1 node/$NODE2 node/$NODE3 node/$NODE4 node=loadgen
```

Taint the load generator nodes:

```bash
for node in $(kubectl get nodes -l node=loadgen -o name); do
  kubectl taint nodes $node loadgen=true:NoSchedule
done
```

__Note:__ The Vegeta deployment will add a toleration to the load generator pods.

## Kubernetes Metrics Server

The Kubernetes Metrics Server is an aggregator of resource usage data in your cluster, and
it isn't deployed by default in Amazon EKS clusters.

Deploy the metrics server:

```bash
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
```

Wait for the metrics server rollout to complete:

```bash
kubectl rollout status deploy/metrics-server -n kube-system
```

Test the metrics server is working by displaying resource (CPU/memory) usage of nodes:

```bash
kubectl top nodes
```

## Node Pool Resizing (Optional)

If you want to scale up/down the `ng-1` node group:

```bash
eksctl scale nodegroup --cluster ${CLUSTER_NAME} --name ng-1 --nodes 27
```

## Cleanup

Run the following command to delete the cluster:

```bash
eksctl delete cluster -f clusterconfig.yaml
```
