kubectl patch GatewayParameters gloo-waypoint -n gloo-system --type='merge' --patch '{
  "spec": {
    "kube": {
      "podTemplate": {
        "affinity": {
          "podAntiAffinity": {
            "preferredDuringSchedulingIgnoredDuringExecution": [
              {
                "weight": 100,
                "podAffinityTerm": {
                  "labelSelector": {
                    "matchExpressions": [
                      {
                        "key": "gateway.networking.k8s.io/gateway-name",
                        "operator": "In",
                        "values": [
                          "waypoint"
                        ]
                      }
                    ]
                  },
                  "namespaceSelector": {},
                  "topologyKey": "kubernetes.io/hostname"
                }
              }
            ]
          }
        }
      }
    }
  }
}'
