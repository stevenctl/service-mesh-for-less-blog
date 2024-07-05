```
Namespace: ns-1
Pod: vegeta-ns-1-7b7848bb95-mjmjj
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.016s, 30.026s, 30.029s, 30.029s, 30.029s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-1.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.234.151:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-1.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-2
Pod: vegeta-ns-2-78fcb9f7b8-2jxgq
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.585ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.251ms, 4.792ms, 4.485ms, 5.571ms, 6.242ms, 11.304ms, 94.692ms
Bytes In      [total, mean]                     737493428, 2731.46
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-3
Pod: vegeta-ns-3-8696b8b69-lwt6d
Status Codes  [code:count]                      200:270001  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.431ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.214ms, 4.75ms, 4.417ms, 5.62ms, 6.364ms, 10.371ms, 206.176ms
Bytes In      [total, mean]                     737760889, 2732.45
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-4
Pod: vegeta-ns-4-54689f549d-tzsnk
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.768ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.093ms, 4.702ms, 4.355ms, 5.546ms, 6.381ms, 11.587ms, 62.869ms
Bytes In      [total, mean]                     738016944, 2733.40
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-5
Pod: vegeta-ns-5-864ddddcc9-zm42f
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.903ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.408ms, 4.989ms, 4.671ms, 5.863ms, 6.527ms, 10.757ms, 152.809ms
Bytes In      [total, mean]                     737234691, 2730.50
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-6
Pod: vegeta-ns-6-78b7c9f7cb-9cqg7
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.016s, 30.025s, 30.029s, 30.029s, 30.03s, 30.032s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-6.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.235.195:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-6.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-7
Pod: vegeta-ns-7-5b57bccdd9-ddx84
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.575ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.001ms, 3.98ms, 3.839ms, 4.339ms, 4.693ms, 6.841ms, 165.907ms
Bytes In      [total, mean]                     738563636, 2735.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-8
Pod: vegeta-ns-8-79d954bbc4-ldfd7
Status Codes  [code:count]                      200:270001  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.891ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.1ms, 4.497ms, 4.217ms, 5.211ms, 5.871ms, 9.482ms, 101.224ms
Bytes In      [total, mean]                     738287300, 2734.40
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-9
Pod: vegeta-ns-9-5fc8b95bbc-qp8gq
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.963ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.999ms, 4.072ms, 3.883ms, 4.488ms, 4.956ms, 7.966ms, 101.086ms
Bytes In      [total, mean]                     736944656, 2729.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-10
Pod: vegeta-ns-10-674f8cd4fc-jljx4
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.03s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.016s, 30.021s, 30.029s, 30.029s, 30.03s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-10.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.238.59:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-10.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-11
Pod: vegeta-ns-11-6cbcf686f6-hwhx5
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.824ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.257ms, 4.745ms, 4.471ms, 5.512ms, 6.3ms, 9.763ms, 78.7ms
Bytes In      [total, mean]                     740206306, 2741.50
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-12
Pod: vegeta-ns-12-66b466d567-dv748
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m31s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.018s, 30.027s, 30.029s, 30.029s, 30.03s, 30.031s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-12.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.230.222:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-12.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-13
Pod: vegeta-ns-13-765974788b-45jsr
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270001, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.841ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.165ms, 4.325ms, 4.098ms, 4.854ms, 5.418ms, 8.787ms, 100.432ms
Bytes In      [total, mean]                     739640720, 2739.40
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270001  
Error Set:

Namespace: ns-14
Pod: vegeta-ns-14-7c4d4556f7-8kzsx
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.014s, 30.018s, 30.028s, 30.029s, 30.029s, 30.031s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-14.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-14.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.239.235:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)

Namespace: ns-15
Pod: vegeta-ns-15-664cbb9b8d-xx9dd
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.135ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.212ms, 4.524ms, 4.248ms, 5.146ms, 5.811ms, 9.916ms, 212.611ms
Bytes In      [total, mean]                     740204218, 2741.50
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-16
Pod: vegeta-ns-16-697dbd4675-zc9ns
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.243ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.196ms, 4.768ms, 4.449ms, 5.587ms, 6.254ms, 10.908ms, 99.718ms
Bytes In      [total, mean]                     740193638, 2741.46
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-17
Pod: vegeta-ns-17-69cccfb974-wstqh
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.77ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.055ms, 4.135ms, 3.923ms, 4.595ms, 5.124ms, 8.478ms, 100.651ms
Bytes In      [total, mean]                     740173530, 2741.38
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-18
Pod: vegeta-ns-18-9d4498fd9-z664h
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.016s, 30.026s, 30.029s, 30.029s, 30.03s, 30.031s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-18.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.227.154:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-18.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-19
Pod: vegeta-ns-19-56c5f875b8-vkzxf
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.236ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.075ms, 4.09ms, 3.946ms, 4.508ms, 4.857ms, 6.951ms, 163.621ms
Bytes In      [total, mean]                     740182511, 2741.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-20
Pod: vegeta-ns-20-59768d74d8-xjqrw
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.016s, 30.025s, 30.029s, 30.029s, 30.03s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-20.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.235.10:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-20.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-21
Pod: vegeta-ns-21-7ffddb6549-7gfxk
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.085ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.327ms, 4.775ms, 4.495ms, 5.509ms, 6.227ms, 10.396ms, 78.399ms
Bytes In      [total, mean]                     740197607, 2741.47
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-22
Pod: vegeta-ns-22-85987cc6b-6mzhn
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.113ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.007ms, 4.718ms, 4.358ms, 5.693ms, 6.575ms, 11.484ms, 76.018ms
Bytes In      [total, mean]                     740452690, 2742.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-23
Pod: vegeta-ns-23-56944c4fcf-25b7p
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.03s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.016s, 30.026s, 30.029s, 30.03s, 30.033s, 30.036s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-23.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-23.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.233.79:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)

Namespace: ns-24
Pod: vegeta-ns-24-5578c96bb8-6l76p
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.015s, 30.021s, 30.029s, 30.029s, 30.03s, 30.031s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-24.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-24.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.234.183:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)

Namespace: ns-25
Pod: vegeta-ns-25-689d69ccb9-9nhr4
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m31s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.018s, 30.023s, 30.029s, 30.03s, 30.033s, 30.035s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-25.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.228.94:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-25.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-26
Pod: vegeta-ns-26-74fcd9f6f4-4nc6n
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m31s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.018s, 30.027s, 30.029s, 30.029s, 30.03s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-26.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.228.67:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-26.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-27
Pod: vegeta-ns-27-688546579f-vt5sp
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m31s, 10m1s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.021s, 30.026s, 30.03s, 30.031s, 30.035s, 30.038s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-27.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.230.18:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-27.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-28
Pod: vegeta-ns-28-7674559c76-r687w
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.681ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.033ms, 3.964ms, 3.811ms, 4.334ms, 4.711ms, 7.211ms, 84.659ms
Bytes In      [total, mean]                     739922670, 2740.45
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-29
Pod: vegeta-ns-29-64598845-9nzfz
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.43ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.334ms, 4.596ms, 4.383ms, 5.259ms, 5.829ms, 8.588ms, 59.735ms
Bytes In      [total, mean]                     739395965, 2738.50
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-30
Pod: vegeta-ns-30-5cdb679855-xj4dm
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.017s, 30.026s, 30.029s, 30.03s, 30.033s, 30.034s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-30.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.233.35:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-30.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-31
Pod: vegeta-ns-31-77fbbf4858-c8cpr
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.017s, 30.024s, 30.029s, 30.03s, 30.034s, 30.038s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-31.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.234.52:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-31.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-32
Pod: vegeta-ns-32-66f748d869-jwwlq
Status Codes  [code:count]                      200:270001  
Error Set:
Requests      [total, rate, throughput]         270001, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.577ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.977ms, 3.956ms, 3.817ms, 4.307ms, 4.663ms, 6.788ms, 208.284ms
Bytes In      [total, mean]                     739916241, 2740.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270001  
Error Set:

Namespace: ns-33
Pod: vegeta-ns-33-5f5c94f848-flq2m
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.997ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.295ms, 4.773ms, 4.489ms, 5.627ms, 6.361ms, 9.668ms, 209.237ms
Bytes In      [total, mean]                     740721511, 2743.41
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-34
Pod: vegeta-ns-34-64bc6dffd7-cm82j
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.789ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.029ms, 4.304ms, 4.019ms, 4.901ms, 5.63ms, 10.84ms, 100.117ms
Bytes In      [total, mean]                     740192628, 2741.45
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-35
Pod: vegeta-ns-35-67f4945ff8-sf4gx
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.085ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.152ms, 4.357ms, 4.124ms, 4.899ms, 5.423ms, 9.173ms, 212.041ms
Bytes In      [total, mean]                     739636364, 2739.39
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-36
Pod: vegeta-ns-36-5fb5c8d4d9-qfwnk
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.442ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.044ms, 4.018ms, 3.864ms, 4.441ms, 4.858ms, 7.226ms, 99.988ms
Bytes In      [total, mean]                     740722045, 2743.41
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-37
Pod: vegeta-ns-37-88b9f564d-8vkm9
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.03s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.017s, 30.026s, 30.029s, 30.029s, 30.03s, 30.031s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-37.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.227.226:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-37.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-38
Pod: vegeta-ns-38-7889b747f9-fgcvw
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.015s, 30.023s, 30.029s, 30.029s, 30.03s, 30.031s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-38.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-38.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.230.134:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)

Namespace: ns-39
Pod: vegeta-ns-39-6df7df5b7d-ql4nz
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.079ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.112ms, 4.434ms, 4.201ms, 4.998ms, 5.558ms, 9.1ms, 99.787ms
Bytes In      [total, mean]                     740197235, 2741.47
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-40
Pod: vegeta-ns-40-864c548ddb-bcqzc
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.015s, 30.024s, 30.028s, 30.029s, 30.03s, 30.032s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-40.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.226.38:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-40.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-41
Pod: vegeta-ns-41-765fd68df5-xpb5j
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.048ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.018ms, 3.94ms, 3.808ms, 4.302ms, 4.623ms, 6.841ms, 100.224ms
Bytes In      [total, mean]                     739650146, 2739.44
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-42
Pod: vegeta-ns-42-84598d4544-mxbg7
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.835ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.145ms, 4.176ms, 3.999ms, 4.63ms, 5.062ms, 7.694ms, 172.327ms
Bytes In      [total, mean]                     739669510, 2739.52
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-43
Pod: vegeta-ns-43-5b864bdfc-9spwk
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.176ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.135ms, 4.109ms, 3.966ms, 4.567ms, 4.952ms, 7.001ms, 101.472ms
Bytes In      [total, mean]                     740198252, 2741.48
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-44
Pod: vegeta-ns-44-7b4b66b894-ghkw5
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.099ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.191ms, 4.854ms, 4.485ms, 5.753ms, 6.626ms, 11.989ms, 208.771ms
Bytes In      [total, mean]                     739641829, 2739.41
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-45
Pod: vegeta-ns-45-569bf6655f-mg257
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.453ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.061ms, 3.945ms, 3.813ms, 4.277ms, 4.642ms, 6.963ms, 100.145ms
Bytes In      [total, mean]                     740180754, 2741.41
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-46
Pod: vegeta-ns-46-89db6cf64-kwr5l
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.105ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.033ms, 4.142ms, 3.939ms, 4.579ms, 5.048ms, 8.14ms, 100.935ms
Bytes In      [total, mean]                     739914951, 2740.43
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-47
Pod: vegeta-ns-47-96b88fdf-4rg4n
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.676ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.122ms, 4.323ms, 4.062ms, 4.878ms, 5.533ms, 10.172ms, 70.503ms
Bytes In      [total, mean]                     740717602, 2743.40
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-48
Pod: vegeta-ns-48-6cc6fb59d6-ll5g4
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.638ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.281ms, 4.573ms, 4.331ms, 5.147ms, 5.776ms, 9.275ms, 156.487ms
Bytes In      [total, mean]                     739920281, 2740.45
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-49
Pod: vegeta-ns-49-78445f9855-d4dq5
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.166ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.206ms, 4.448ms, 4.166ms, 5.025ms, 5.687ms, 10.581ms, 101.699ms
Bytes In      [total, mean]                     740718967, 2743.40
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-50
Pod: vegeta-ns-50-7866c64849-kr5tz
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m31s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.017s, 30.024s, 30.029s, 30.029s, 30.03s, 30.032s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-50.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.227.104:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-50.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

```
