```
Namespace: ns-1
Pod: vegeta-ns-1-7b7848bb95-sj74g
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.017s, 30.026s, 30.028s, 30.029s, 30.029s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-1.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.235.147:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-1.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-2
Pod: vegeta-ns-2-78fcb9f7b8-kz4gk
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.383ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.894ms, 3.811ms, 3.644ms, 4.148ms, 4.6ms, 7.513ms, 100.9ms
Bytes In      [total, mean]                     736934056, 2729.39
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-3
Pod: vegeta-ns-3-8696b8b69-kc7kr
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270001, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.765ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.925ms, 3.774ms, 3.614ms, 4.087ms, 4.49ms, 7.213ms, 102.79ms
Bytes In      [total, mean]                     737756233, 2732.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270001  
Error Set:

Namespace: ns-4
Pod: vegeta-ns-4-54689f549d-7bgsw
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.013s, 30.01s, 30.029s, 30.029s, 30.03s, 30.031s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-4.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.234.18:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-4.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-5
Pod: vegeta-ns-5-864ddddcc9-r2678
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.378ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.915ms, 3.862ms, 3.702ms, 4.219ms, 4.658ms, 7.367ms, 211.976ms
Bytes In      [total, mean]                     737483044, 2731.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-6
Pod: vegeta-ns-6-78b7c9f7cb-99kc9
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.675ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.014ms, 3.966ms, 3.775ms, 4.343ms, 4.84ms, 7.924ms, 102.602ms
Bytes In      [total, mean]                     737476856, 2731.40
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-7
Pod: vegeta-ns-7-5b57bccdd9-qn472
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.831ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.057ms, 4.05ms, 3.847ms, 4.467ms, 5.03ms, 7.95ms, 210.9ms
Bytes In      [total, mean]                     738291986, 2734.41
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-8
Pod: vegeta-ns-8-79d954bbc4-47zwd
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.003s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.015s, 30.025s, 30.028s, 30.029s, 30.03s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-8.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.228.24:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-8.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-9
Pod: vegeta-ns-9-5fc8b95bbc-7rzhd
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.607ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.947ms, 3.973ms, 3.771ms, 4.371ms, 4.972ms, 8.358ms, 86.265ms
Bytes In      [total, mean]                     737484215, 2731.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-10
Pod: vegeta-ns-10-674f8cd4fc-zfldx
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.03s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.016s, 30.025s, 30.029s, 30.029s, 30.03s, 30.031s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-10.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.230.185:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-10.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-11
Pod: vegeta-ns-11-6cbcf686f6-bzxm7
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.016s, 30.025s, 30.029s, 30.029s, 30.029s, 30.032s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-11.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.232.97:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-11.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-12
Pod: vegeta-ns-12-66b466d567-msggm
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.03s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.016s, 30.025s, 30.029s, 30.029s, 30.03s, 30.033s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-12.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-12.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.225.31:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)

Namespace: ns-13
Pod: vegeta-ns-13-765974788b-xbznh
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270001, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.696ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.978ms, 3.84ms, 3.703ms, 4.153ms, 4.488ms, 6.828ms, 60.116ms
Bytes In      [total, mean]                     739372371, 2738.41
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270001  
Error Set:

Namespace: ns-14
Pod: vegeta-ns-14-7c4d4556f7-knsll
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.414ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.979ms, 3.81ms, 3.669ms, 4.133ms, 4.542ms, 6.727ms, 143.11ms
Bytes In      [total, mean]                     740186564, 2741.43
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-15
Pod: vegeta-ns-15-664cbb9b8d-kbwj5
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.433ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.871ms, 3.775ms, 3.618ms, 4.108ms, 4.607ms, 7.324ms, 82.759ms
Bytes In      [total, mean]                     739912887, 2740.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-16
Pod: vegeta-ns-16-697dbd4675-t47c5
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.359ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.924ms, 3.787ms, 3.623ms, 4.127ms, 4.598ms, 7.191ms, 100.192ms
Bytes In      [total, mean]                     739918733, 2740.44
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-17
Pod: vegeta-ns-17-69cccfb974-mqjzf
Status Codes  [code:count]                      200:270001  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.883ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.037ms, 4.072ms, 3.856ms, 4.494ms, 5.117ms, 8.219ms, 103.565ms
Bytes In      [total, mean]                     740720132, 2743.41
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-18
Pod: vegeta-ns-18-9d4498fd9-6b5bm
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.735ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.93ms, 3.727ms, 3.593ms, 4.027ms, 4.412ms, 6.885ms, 73.362ms
Bytes In      [total, mean]                     740448012, 2742.40
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-19
Pod: vegeta-ns-19-56c5f875b8-w6bjp
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.015s, 30.024s, 30.029s, 30.029s, 30.031s, 30.034s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-19.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.225.124:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-19.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-20
Pod: vegeta-ns-20-59768d74d8-fwzcq
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.117ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.93ms, 3.748ms, 3.587ms, 4.072ms, 4.524ms, 7.339ms, 95.324ms
Bytes In      [total, mean]                     738830037, 2736.41
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-21
Pod: vegeta-ns-21-7ffddb6549-lt7k7
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.91ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.931ms, 3.782ms, 3.636ms, 4.124ms, 4.573ms, 6.86ms, 73.029ms
Bytes In      [total, mean]                     739095852, 2737.39
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-22
Pod: vegeta-ns-22-85987cc6b-kd7m6
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.015s, 30.025s, 30.029s, 30.029s, 30.03s, 30.032s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-22.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.227.251:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-22.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-23
Pod: vegeta-ns-23-56944c4fcf-q2ng2
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.319ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.911ms, 3.743ms, 3.616ms, 4.047ms, 4.369ms, 6.57ms, 214.028ms
Bytes In      [total, mean]                     739372992, 2738.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-24
Pod: vegeta-ns-24-5578c96bb8-kz468
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.191ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.006ms, 3.941ms, 3.778ms, 4.301ms, 4.744ms, 7.367ms, 100.951ms
Bytes In      [total, mean]                     740447275, 2742.40
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-25
Pod: vegeta-ns-25-689d69ccb9-552wb
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.016s, 30.025s, 30.029s, 30.029s, 30.031s, 30.033s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-25.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.238.184:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-25.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-26
Pod: vegeta-ns-26-74fcd9f6f4-fdhzn
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.03s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.015s, 30.025s, 30.029s, 30.029s, 30.03s, 30.031s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-26.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.238.19:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-26.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-27
Pod: vegeta-ns-27-688546579f-fdgfd
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.552ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.906ms, 3.75ms, 3.607ms, 4.102ms, 4.533ms, 6.805ms, 58.431ms
Bytes In      [total, mean]                     739369588, 2738.41
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-28
Pod: vegeta-ns-28-7674559c76-dhd4g
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.464ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.015ms, 3.936ms, 3.759ms, 4.284ms, 4.727ms, 7.968ms, 101.917ms
Bytes In      [total, mean]                     739636339, 2739.39
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-29
Pod: vegeta-ns-29-64598845-xwgzv
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.713ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.947ms, 3.899ms, 3.729ms, 4.246ms, 4.719ms, 7.721ms, 100.701ms
Bytes In      [total, mean]                     739909133, 2740.40
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-30
Pod: vegeta-ns-30-5cdb679855-bwjb6
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.289ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.925ms, 3.858ms, 3.68ms, 4.206ms, 4.693ms, 7.528ms, 208.469ms
Bytes In      [total, mean]                     740183411, 2741.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-31
Pod: vegeta-ns-31-77fbbf4858-rm8cx
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.006ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.988ms, 3.927ms, 3.742ms, 4.33ms, 4.784ms, 7.551ms, 216.807ms
Bytes In      [total, mean]                     740717859, 2743.40
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-32
Pod: vegeta-ns-32-66f748d869-w7h7q
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.609ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.893ms, 3.777ms, 3.612ms, 4.122ms, 4.66ms, 7.258ms, 144.623ms
Bytes In      [total, mean]                     739103579, 2737.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-33
Pod: vegeta-ns-33-5f5c94f848-ww482
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.017s, 30.024s, 30.029s, 30.029s, 30.03s, 30.031s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-33.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.226.240:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-33.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-34
Pod: vegeta-ns-34-64bc6dffd7-8fw7r
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270001, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.624ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.028ms, 3.939ms, 3.767ms, 4.321ms, 4.819ms, 7.451ms, 81.424ms
Bytes In      [total, mean]                     739650713, 2739.44
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270001  
Error Set:

Namespace: ns-35
Pod: vegeta-ns-35-67f4945ff8-2jhnk
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.015s, 30.019s, 30.028s, 30.029s, 30.029s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-35.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.238.15:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-35.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-36
Pod: vegeta-ns-36-5fb5c8d4d9-v2fhc
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.017s, 30.025s, 30.029s, 30.029s, 30.031s, 30.033s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-36.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.236.213:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-36.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-37
Pod: vegeta-ns-37-88b9f564d-mjxh2
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.455ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.94ms, 3.76ms, 3.62ms, 4.073ms, 4.428ms, 6.696ms, 213.567ms
Bytes In      [total, mean]                     739639978, 2739.41
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-38
Pod: vegeta-ns-38-7889b747f9-5jdmh
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.016s, 30.025s, 30.029s, 30.029s, 30.03s, 30.031s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-38.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.226.43:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-38.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-39
Pod: vegeta-ns-39-6df7df5b7d-6s8kf
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.41ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.015ms, 3.926ms, 3.763ms, 4.271ms, 4.71ms, 7.474ms, 74.689ms
Bytes In      [total, mean]                     739100882, 2737.41
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-40
Pod: vegeta-ns-40-864c548ddb-mvfm2
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270001, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.486ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.962ms, 3.916ms, 3.767ms, 4.267ms, 4.742ms, 6.938ms, 102.946ms
Bytes In      [total, mean]                     739100897, 2737.40
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270001  
Error Set:

Namespace: ns-41
Pod: vegeta-ns-41-765fd68df5-xpcv5
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m31s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.018s, 30.026s, 30.029s, 30.029s, 30.032s, 30.033s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-41.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.231.12:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-41.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-42
Pod: vegeta-ns-42-84598d4544-kxw27
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.553ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.013ms, 3.858ms, 3.689ms, 4.211ms, 4.649ms, 7.51ms, 212.803ms
Bytes In      [total, mean]                     740454661, 2742.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-43
Pod: vegeta-ns-43-5b864bdfc-4zfh8
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.851ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.961ms, 3.846ms, 3.665ms, 4.188ms, 4.755ms, 7.718ms, 100.481ms
Bytes In      [total, mean]                     739645043, 2739.43
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-44
Pod: vegeta-ns-44-7b4b66b894-jswts
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.011s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.016s, 30.025s, 30.029s, 30.029s, 30.03s, 30.033s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-44.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.237.209:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-44.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-45
Pod: vegeta-ns-45-569bf6655f-68f98
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.588ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.026ms, 3.829ms, 3.693ms, 4.151ms, 4.555ms, 6.617ms, 211.47ms
Bytes In      [total, mean]                     739367814, 2738.40
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-46
Pod: vegeta-ns-46-89db6cf64-mj995
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.258ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.878ms, 3.594ms, 3.47ms, 3.856ms, 4.14ms, 6.425ms, 100.867ms
Bytes In      [total, mean]                     739366711, 2738.40
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-47
Pod: vegeta-ns-47-96b88fdf-gg452
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.03s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.017s, 30.025s, 30.029s, 30.029s, 30.03s, 30.032s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-47.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.227.134:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-47.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-48
Pod: vegeta-ns-48-6cc6fb59d6-qg2k9
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.256ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.93ms, 3.735ms, 3.599ms, 4.054ms, 4.453ms, 6.612ms, 213.074ms
Bytes In      [total, mean]                     740442250, 2742.38
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-49
Pod: vegeta-ns-49-78445f9855-p5j95
Status Codes  [code:count]                      200:270000  
Error Set:
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.498ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.917ms, 3.766ms, 3.623ms, 4.086ms, 4.517ms, 6.966ms, 77.994ms
Bytes In      [total, mean]                     739365534, 2738.39
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-50
Pod: vegeta-ns-50-7866c64849-jgw8t
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m31s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.017s, 30.026s, 30.029s, 30.03s, 30.033s, 30.036s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-50.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.229.52:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-50.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

```
