```
Namespace: ns-1
Pod: vegeta-ns-1-7b7848bb95-qfhjf
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.001s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.008s, 30.001s, 30.027s, 30.028s, 30.029s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-1.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-1.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.238.172:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)

Namespace: ns-2
Pod: vegeta-ns-2-78fcb9f7b8-6pkvv
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.016s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.01s, 30.006s, 30.027s, 30.028s, 30.029s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-2.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.225.70:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-2.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-3
Pod: vegeta-ns-3-8696b8b69-rbvhm
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.03s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.011s, 30.007s, 30.028s, 30.029s, 30.029s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-3.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.227.150:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-3.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-4
Pod: vegeta-ns-4-54689f549d-v6skh
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.024s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.014s, 30.016s, 30.029s, 30.029s, 30.029s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-4.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.233.75:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-4.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-5
Pod: vegeta-ns-5-864ddddcc9-5k8fd
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.025s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.014s, 30.012s, 30.029s, 30.029s, 30.03s, 30.031s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-5.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.239.43:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-5.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-6
Pod: vegeta-ns-6-78b7c9f7cb-v92vm
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.021s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.013s, 30.01s, 30.029s, 30.029s, 30.03s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-6.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-6.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.233.95:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)

Namespace: ns-7
Pod: vegeta-ns-7-5b57bccdd9-bxbqt
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.012s, 30.003s, 30.029s, 30.029s, 30.03s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-7.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.231.160:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-7.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-8
Pod: vegeta-ns-8-79d954bbc4-45cmb
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.02s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.013s, 30.009s, 30.028s, 30.03s, 30.033s, 30.034s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-8.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-8.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.230.129:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)

Namespace: ns-9
Pod: vegeta-ns-9-5fc8b95bbc-pxgx4
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.014s, 30.013s, 30.028s, 30.029s, 30.03s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-9.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.239.71:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-9.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-10
Pod: vegeta-ns-10-674f8cd4fc-tdwqm
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.014s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.014s, 30.014s, 30.029s, 30.03s, 30.03s, 30.031s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-10.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-10.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.228.60:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)

Namespace: ns-11
Pod: vegeta-ns-11-6cbcf686f6-ld8z8
Requests      [total, rate, throughput]         29124, 48.53, 0.00
Duration      [total, attack, wait]             10m8s, 10m0s, 7.427s
Latencies     [min, mean, 50, 90, 95, 99, max]  2.001s, 2.065s, 2.003s, 2.006s, 2.008s, 4.741s, 8.168s
Bytes In      [total, mean]                     25778165, 885.12
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      500:29124  
Error Set:
500 Internal Server Error

Namespace: ns-12
Pod: vegeta-ns-12-66b466d567-wmtw4
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.027s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.013s, 30.012s, 30.028s, 30.028s, 30.029s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-12.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.227.8:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-12.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-13
Pod: vegeta-ns-13-765974788b-xs7q6
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.007s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.015s, 30.019s, 30.028s, 30.028s, 30.029s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-13.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.239.215:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-13.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-14
Pod: vegeta-ns-14-7c4d4556f7-cmtl7
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.03s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.01s, 30.004s, 30.026s, 30.028s, 30.029s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-14.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.235.176:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-14.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-15
Pod: vegeta-ns-15-664cbb9b8d-9m2vh
Requests      [total, rate, throughput]         29123, 48.54, 0.00
Duration      [total, attack, wait]             10m6s, 10m0s, 5.647s
Latencies     [min, mean, 50, 90, 95, 99, max]  2.001s, 2.065s, 2.003s, 2.006s, 2.008s, 4.982s, 8.166s
Bytes In      [total, mean]                     25765674, 884.72
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      500:29123  
Error Set:
500 Internal Server Error

Namespace: ns-16
Pod: vegeta-ns-16-697dbd4675-l8z5l
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.002s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.013s, 30.013s, 30.029s, 30.029s, 30.029s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-16.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.229.200:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-16.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-17
Pod: vegeta-ns-17-69cccfb974-4zdjc
Requests      [total, rate, throughput]         29122, 48.54, 0.00
Duration      [total, attack, wait]             10m5s, 10m0s, 5.443s
Latencies     [min, mean, 50, 90, 95, 99, max]  2.001s, 2.064s, 2.003s, 2.006s, 2.008s, 5.543s, 8.167s
Bytes In      [total, mean]                     25743408, 883.98
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      500:29122  
Error Set:
500 Internal Server Error

Namespace: ns-18
Pod: vegeta-ns-18-9d4498fd9-sx7q7
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.009s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.013s, 30.01s, 30.029s, 30.029s, 30.03s, 30.031s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-18.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.230.89:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-18.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-19
Pod: vegeta-ns-19-56c5f875b8-mm4fb
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.03s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.012s, 30.01s, 30.028s, 30.029s, 30.029s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-19.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.227.234:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-19.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-20
Pod: vegeta-ns-20-59768d74d8-b7mdw
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.011s, 30.002s, 30.029s, 30.029s, 30.03s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-20.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-20.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.229.109:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)

Namespace: ns-21
Pod: vegeta-ns-21-7ffddb6549-sz9f8
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.03s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.007s, 30.001s, 30.025s, 30.027s, 30.029s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-21.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.239.111:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-21.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-22
Pod: vegeta-ns-22-85987cc6b-v27s2
Requests      [total, rate, throughput]         29124, 48.53, 0.00
Duration      [total, attack, wait]             10m7s, 10m0s, 6.713s
Latencies     [min, mean, 50, 90, 95, 99, max]  2.001s, 2.065s, 2.003s, 2.006s, 2.009s, 5.269s, 8.166s
Bytes In      [total, mean]                     25737741, 883.73
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      500:29124  
Error Set:
500 Internal Server Error

Namespace: ns-23
Pod: vegeta-ns-23-56944c4fcf-69s7p
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.03s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.01s, 30.002s, 30.029s, 30.029s, 30.03s, 30.031s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-23.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.226.176:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-23.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-24
Pod: vegeta-ns-24-5578c96bb8-x97pr
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.005s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.01s, 30.002s, 30.028s, 30.029s, 30.03s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-24.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.236.98:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-24.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-25
Pod: vegeta-ns-25-689d69ccb9-r7vn7
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.03s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.012s, 30.009s, 30.029s, 30.029s, 30.03s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-25.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.227.205:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-25.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-26
Pod: vegeta-ns-26-74fcd9f6f4-lw7ts
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.009s, 30.001s, 30.028s, 30.029s, 30.029s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-26.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-26.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.235.35:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)

Namespace: ns-27
Pod: vegeta-ns-27-688546579f-4wrp6
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.027s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.012s, 30.007s, 30.029s, 30.029s, 30.03s, 30.031s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-27.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.225.41:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-27.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-28
Pod: vegeta-ns-28-7674559c76-8vcqx
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.006s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.012s, 30.006s, 30.029s, 30.029s, 30.03s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-28.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.236.180:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-28.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-29
Pod: vegeta-ns-29-64598845-4h8hv
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.007s, 30.001s, 30.027s, 30.029s, 30.03s, 30.031s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-29.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.233.159:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-29.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-30
Pod: vegeta-ns-30-5cdb679855-wm68n
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.008s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.013s, 30.01s, 30.029s, 30.029s, 30.03s, 30.031s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-30.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.234.126:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-30.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-31
Pod: vegeta-ns-31-77fbbf4858-zbwls
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.005s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.012s, 30.01s, 30.028s, 30.028s, 30.029s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-31.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.237.44:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-31.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-32
Pod: vegeta-ns-32-66f748d869-wg9rz
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.03s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.013s, 30.012s, 30.029s, 30.029s, 30.03s, 30.031s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-32.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.238.75:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-32.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-33
Pod: vegeta-ns-33-5f5c94f848-kwsgg
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.024s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.013s, 30.008s, 30.028s, 30.029s, 30.03s, 30.031s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-33.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.237.42:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-33.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-34
Pod: vegeta-ns-34-64bc6dffd7-q84m2
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.03s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.011s, 30.007s, 30.029s, 30.029s, 30.029s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-34.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.231.110:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-34.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-35
Pod: vegeta-ns-35-67f4945ff8-ppkhh
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.013s, 30.007s, 30.029s, 30.029s, 30.03s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-35.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-35.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.236.74:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)

Namespace: ns-36
Pod: vegeta-ns-36-5fb5c8d4d9-ctg8s
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.01s, 30.005s, 30.027s, 30.029s, 30.03s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-36.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.235.79:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-36.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-37
Pod: vegeta-ns-37-88b9f564d-jdwn2
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.014s, 30.014s, 30.029s, 30.029s, 30.03s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-37.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.238.231:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-37.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-38
Pod: vegeta-ns-38-7889b747f9-gbsrp
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.013s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.011s, 30.007s, 30.028s, 30.029s, 30.029s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-38.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.234.57:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-38.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-39
Pod: vegeta-ns-39-6df7df5b7d-bjzmr
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.03s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.012s, 30.009s, 30.028s, 30.029s, 30.029s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-39.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.237.234:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-39.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-40
Pod: vegeta-ns-40-864c548ddb-bmfx5
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.014s, 30.017s, 30.028s, 30.029s, 30.029s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-40.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.226.198:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-40.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-41
Pod: vegeta-ns-41-765fd68df5-jkcnm
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.03s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.011s, 30.004s, 30.029s, 30.029s, 30.03s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-41.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.225.9:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-41.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-42
Pod: vegeta-ns-42-84598d4544-wlh7h
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.03s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.009s, 30.002s, 30.026s, 30.028s, 30.03s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-42.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-42.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.238.2:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)

Namespace: ns-43
Pod: vegeta-ns-43-5b864bdfc-p54sv
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.015s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.013s, 30.012s, 30.029s, 30.03s, 30.03s, 30.031s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-43.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.239.94:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-43.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-44
Pod: vegeta-ns-44-7b4b66b894-g4kfz
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.03s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.013s, 30.015s, 30.029s, 30.029s, 30.03s, 30.031s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-44.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.229.99:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-44.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-45
Pod: vegeta-ns-45-569bf6655f-525jt
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.03s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.01s, 30.004s, 30.027s, 30.028s, 30.029s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-45.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.237.175:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-45.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-46
Pod: vegeta-ns-46-89db6cf64-vhlsq
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.009s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.011s, 30.008s, 30.028s, 30.029s, 30.029s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-46.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.230.8:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-46.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-47
Pod: vegeta-ns-47-96b88fdf-fwshw
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.026s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.014s, 30.014s, 30.028s, 30.029s, 30.03s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-47.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.233.201:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-47.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-48
Pod: vegeta-ns-48-6cc6fb59d6-568fj
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.007s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.01s, 30.003s, 30.028s, 30.029s, 30.029s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-48.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.233.242:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-48.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-49
Pod: vegeta-ns-49-78445f9855-mqr2n
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.016s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.012s, 30.009s, 30.028s, 30.029s, 30.029s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-49.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.238.76:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-49.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-50
Pod: vegeta-ns-50-7866c64849-z2bpb
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.03s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.013s, 30.011s, 30.029s, 30.029s, 30.03s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-50.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.225.29:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-50.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

```
