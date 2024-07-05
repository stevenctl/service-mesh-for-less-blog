#!/bin/bash
# Get the list of Cilium pods
PODS=$(kubectl get pods -l app.kubernetes.io/name=cilium-agent -n kube-system -o jsonpath='{.items[*].metadata.name}')

# Loop through each pod and run the logs command with grep
for POD in $PODS; do
  echo "Logs for pod: $POD"
  kubectl logs po/$POD -n kube-system | grep remoteNodeIP
done
