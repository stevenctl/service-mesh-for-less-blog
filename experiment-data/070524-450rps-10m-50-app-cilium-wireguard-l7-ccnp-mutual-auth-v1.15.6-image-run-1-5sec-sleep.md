```
Namespace: ns-1
Pod: vegeta-ns-1-7b7848bb95-xtsbs
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.687ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.006ms, 4.174ms, 3.961ms, 4.625ms, 5.196ms, 8.329ms, 160.99ms
Bytes In      [total, mean]                     738024465, 2733.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-2
Pod: vegeta-ns-2-78fcb9f7b8-zt8fj
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.47ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.01ms, 4.275ms, 4.046ms, 4.78ms, 5.409ms, 8.671ms, 224.71ms
Bytes In      [total, mean]                     738308593, 2734.48
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-3
Pod: vegeta-ns-3-8696b8b69-4ndfd
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.436ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.034ms, 4.85ms, 4.153ms, 5.07ms, 5.824ms, 11.274ms, 221.679ms
Bytes In      [total, mean]                     737495419, 2731.46
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-4
Pod: vegeta-ns-4-54689f549d-vcjdf
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 5.262ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.191ms, 4.465ms, 4.189ms, 5.103ms, 5.752ms, 9.807ms, 208.489ms
Bytes In      [total, mean]                     737499286, 2731.48
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-5
Pod: vegeta-ns-5-864ddddcc9-76nv2
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.768ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.06ms, 4.852ms, 4.073ms, 4.801ms, 5.502ms, 10.156ms, 328.614ms
Bytes In      [total, mean]                     738296309, 2734.43
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-6
Pod: vegeta-ns-6-78b7c9f7cb-vpwdx
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.015s, 30.025s, 30.028s, 30.029s, 30.029s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-6.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.238.120:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-6.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-7
Pod: vegeta-ns-7-5b57bccdd9-ndb2s
Requests      [total, rate, throughput]         270001, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.689ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.226ms, 5.157ms, 4.298ms, 5.403ms, 6.153ms, 12.107ms, 328.476ms
Bytes In      [total, mean]                     738575379, 2735.45
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270001  
Error Set:

Namespace: ns-8
Pod: vegeta-ns-8-79d954bbc4-rq5ng
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.753ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.165ms, 4.9ms, 4.012ms, 4.74ms, 5.485ms, 11.116ms, 420.877ms
Bytes In      [total, mean]                     737760807, 2732.45
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-9
Pod: vegeta-ns-9-5fc8b95bbc-wfj26
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.11ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.063ms, 4.372ms, 4.119ms, 4.95ms, 5.673ms, 9.369ms, 64.345ms
Bytes In      [total, mean]                     737761369, 2732.45
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-10
Pod: vegeta-ns-10-674f8cd4fc-cr9tt
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.39ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.161ms, 4.347ms, 4.017ms, 4.692ms, 5.252ms, 8.461ms, 369.923ms
Bytes In      [total, mean]                     740190403, 2741.45
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-11
Pod: vegeta-ns-11-6cbcf686f6-p4bbq
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.249ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.169ms, 4.28ms, 4.039ms, 4.816ms, 5.536ms, 8.846ms, 94.606ms
Bytes In      [total, mean]                     740182958, 2741.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-12
Pod: vegeta-ns-12-66b466d567-rmccf
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.734ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.195ms, 4.231ms, 4.08ms, 4.708ms, 5.14ms, 7.284ms, 71.862ms
Bytes In      [total, mean]                     739659351, 2739.48
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-13
Pod: vegeta-ns-13-765974788b-4mg4r
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.85ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.072ms, 4.997ms, 4.001ms, 4.66ms, 5.219ms, 10.393ms, 520.067ms
Bytes In      [total, mean]                     739650749, 2739.45
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-14
Pod: vegeta-ns-14-7c4d4556f7-7h2xn
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.893ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.232ms, 4.371ms, 4.156ms, 4.954ms, 5.553ms, 8.503ms, 104.728ms
Bytes In      [total, mean]                     739913551, 2740.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-15
Pod: vegeta-ns-15-664cbb9b8d-f446x
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.812ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.079ms, 4.121ms, 3.958ms, 4.55ms, 5.01ms, 7.361ms, 99.091ms
Bytes In      [total, mean]                     739921775, 2740.45
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-16
Pod: vegeta-ns-16-697dbd4675-l6lfl
Requests      [total, rate, throughput]         270001, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.211ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.085ms, 4.128ms, 3.965ms, 4.604ms, 5.083ms, 7.328ms, 88.893ms
Bytes In      [total, mean]                     739383647, 2738.45
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270001  
Error Set:

Namespace: ns-17
Pod: vegeta-ns-17-69cccfb974-svz6k
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.877ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.282ms, 4.497ms, 4.175ms, 4.885ms, 5.455ms, 7.865ms, 343.303ms
Bytes In      [total, mean]                     740191579, 2741.45
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-18
Pod: vegeta-ns-18-9d4498fd9-htcvc
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 7.817ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.243ms, 4.555ms, 4.272ms, 5.236ms, 6.047ms, 9.67ms, 116.877ms
Bytes In      [total, mean]                     740448050, 2742.40
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-19
Pod: vegeta-ns-19-56c5f875b8-kb6p4
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.015s, 30.023s, 30.029s, 30.029s, 30.03s, 30.034s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-19.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.229.66:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-19.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-20
Pod: vegeta-ns-20-59768d74d8-dhnjd
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.088ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.189ms, 4.441ms, 4.12ms, 4.861ms, 5.44ms, 8.547ms, 394.499ms
Bytes In      [total, mean]                     740203277, 2741.49
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-21
Pod: vegeta-ns-21-7ffddb6549-ffpsb
Requests      [total, rate, throughput]         270001, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.379ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.078ms, 4.439ms, 4.118ms, 4.871ms, 5.562ms, 8.806ms, 267.083ms
Bytes In      [total, mean]                     739405822, 2738.53
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270001  
Error Set:

Namespace: ns-22
Pod: vegeta-ns-22-85987cc6b-bwhnh
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.861ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.177ms, 4.31ms, 4.122ms, 4.808ms, 5.32ms, 8.041ms, 61.007ms
Bytes In      [total, mean]                     741007611, 2744.47
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-23
Pod: vegeta-ns-23-56944c4fcf-xrc8t
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.287ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.14ms, 4.25ms, 3.992ms, 4.622ms, 5.174ms, 7.472ms, 365.928ms
Bytes In      [total, mean]                     740196601, 2741.47
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-24
Pod: vegeta-ns-24-5578c96bb8-qtsc2
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.978ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.152ms, 4.189ms, 4.019ms, 4.632ms, 5.133ms, 7.666ms, 50.414ms
Bytes In      [total, mean]                     739912329, 2740.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-25
Pod: vegeta-ns-25-689d69ccb9-dgf8n
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.889ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.151ms, 4.426ms, 4.203ms, 5.063ms, 5.713ms, 8.381ms, 36.938ms
Bytes In      [total, mean]                     739371833, 2738.41
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-26
Pod: vegeta-ns-26-74fcd9f6f4-bts7h
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.018s, 30.024s, 30.029s, 30.03s, 30.032s, 30.034s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-26.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.237.84:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-26.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-27
Pod: vegeta-ns-27-688546579f-6zxvb
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.768ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.151ms, 4.385ms, 4.153ms, 4.975ms, 5.586ms, 8.71ms, 40.9ms
Bytes In      [total, mean]                     739111694, 2737.45
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-28
Pod: vegeta-ns-28-7674559c76-9r9fv
Requests      [total, rate, throughput]         270001, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.056ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.301ms, 4.626ms, 4.351ms, 5.329ms, 6.111ms, 9.477ms, 84.115ms
Bytes In      [total, mean]                     740454376, 2742.41
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270001  
Error Set:

Namespace: ns-29
Pod: vegeta-ns-29-64598845-h6f69
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.017s, 30.024s, 30.029s, 30.03s, 30.031s, 30.033s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-29.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.230.172:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-29.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-30
Pod: vegeta-ns-30-5cdb679855-lmmhp
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.818ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.118ms, 4.306ms, 4.069ms, 4.882ms, 5.673ms, 8.674ms, 215.396ms
Bytes In      [total, mean]                     740454730, 2742.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-31
Pod: vegeta-ns-31-77fbbf4858-mqlrv
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.03s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.018s, 30.024s, 30.029s, 30.03s, 30.032s, 30.036s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-31.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.233.105:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-31.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-32
Pod: vegeta-ns-32-66f748d869-67mbd
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.899ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.177ms, 4.313ms, 4.107ms, 4.866ms, 5.441ms, 8.185ms, 72.944ms
Bytes In      [total, mean]                     739369137, 2738.40
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-33
Pod: vegeta-ns-33-5f5c94f848-bthcj
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.017s, 30.024s, 30.029s, 30.031s, 30.033s, 30.035s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-33.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.230.195:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-33.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-34
Pod: vegeta-ns-34-64bc6dffd7-fgmj6
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 5.269ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.172ms, 4.357ms, 4.069ms, 4.943ms, 5.635ms, 8.868ms, 265.085ms
Bytes In      [total, mean]                     740454880, 2742.43
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-35
Pod: vegeta-ns-35-67f4945ff8-92qbz
Requests      [total, rate, throughput]         270001, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.991ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.091ms, 4.29ms, 4.079ms, 4.822ms, 5.41ms, 8.34ms, 57.363ms
Bytes In      [total, mean]                     740742137, 2743.48
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270001  
Error Set:

Namespace: ns-36
Pod: vegeta-ns-36-5fb5c8d4d9-8tszn
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.318ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.13ms, 4.486ms, 4.001ms, 4.658ms, 5.233ms, 8.998ms, 356.866ms
Bytes In      [total, mean]                     738845986, 2736.47
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-37
Pod: vegeta-ns-37-88b9f564d-spz8r
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.264ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.21ms, 4.703ms, 4.087ms, 4.763ms, 5.241ms, 7.844ms, 396.876ms
Bytes In      [total, mean]                     739674723, 2739.54
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-38
Pod: vegeta-ns-38-7889b747f9-rpcth
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 5.039ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.067ms, 4.667ms, 4.027ms, 4.723ms, 5.268ms, 9.14ms, 423.751ms
Bytes In      [total, mean]                     739104141, 2737.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-39
Pod: vegeta-ns-39-6df7df5b7d-8zd8l
Requests      [total, rate, throughput]         270001, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.785ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.145ms, 4.252ms, 4.051ms, 4.779ms, 5.314ms, 8.089ms, 215.339ms
Bytes In      [total, mean]                     740453765, 2742.41
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270001  
Error Set:

Namespace: ns-40
Pod: vegeta-ns-40-864c548ddb-hjxq5
Requests      [total, rate, throughput]         270000, 450.04, 450.04
Duration      [total, attack, wait]             10m0s, 10m0s, 3.627ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.144ms, 4.702ms, 4.013ms, 4.612ms, 5.086ms, 8.659ms, 447.57ms
Bytes In      [total, mean]                     740460776, 2742.45
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-41
Pod: vegeta-ns-41-765fd68df5-qp2b9
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.891ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.089ms, 4.077ms, 3.927ms, 4.509ms, 4.947ms, 7.137ms, 217.588ms
Bytes In      [total, mean]                     739660819, 2739.48
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-42
Pod: vegeta-ns-42-84598d4544-q8c2p
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.388ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.168ms, 4.481ms, 3.946ms, 4.57ms, 5.087ms, 8.643ms, 267.435ms
Bytes In      [total, mean]                     739637300, 2739.40
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-43
Pod: vegeta-ns-43-5b864bdfc-h488p
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.111ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.152ms, 4.275ms, 4.063ms, 4.825ms, 5.455ms, 8.409ms, 55.313ms
Bytes In      [total, mean]                     740739779, 2743.48
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-44
Pod: vegeta-ns-44-7b4b66b894-78gx6
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.017s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.016s, 30.022s, 30.029s, 30.029s, 30.03s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-44.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.229.7:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-44.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-45
Pod: vegeta-ns-45-569bf6655f-lmwvg
Requests      [total, rate, throughput]         270000, 450.05, 450.04
Duration      [total, attack, wait]             10m0s, 10m0s, 3.815ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.153ms, 4.561ms, 3.987ms, 4.582ms, 5.13ms, 7.822ms, 442.664ms
Bytes In      [total, mean]                     740457217, 2742.43
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-46
Pod: vegeta-ns-46-89db6cf64-4dgt5
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 4.641ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.138ms, 4.299ms, 4.105ms, 4.853ms, 5.371ms, 7.79ms, 113.449ms
Bytes In      [total, mean]                     739925736, 2740.47
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-47
Pod: vegeta-ns-47-96b88fdf-4zmc9
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m30s, 10m0s, 30.029s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.019s, 30.027s, 30.029s, 30.029s, 30.03s, 30.03s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-47.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.228.77:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-47.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-48
Pod: vegeta-ns-48-6cc6fb59d6-dk4fp
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.665ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.056ms, 3.958ms, 3.819ms, 4.339ms, 4.76ms, 6.906ms, 206.524ms
Bytes In      [total, mean]                     739911487, 2740.41
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

Namespace: ns-49
Pod: vegeta-ns-49-78445f9855-bgtzg
Requests      [total, rate, throughput]         2001, 3.33, 0.00
Duration      [total, attack, wait]             10m31s, 10m0s, 30.03s
Latencies     [min, mean, 50, 90, 95, 99, max]  30s, 30.018s, 30.026s, 30.029s, 30.029s, 30.03s, 30.031s
Bytes In      [total, mean]                     0, 0.00
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           0.00%
Status Codes  [code:count]                      0:2001  
Error Set:
Get "http://tier-1-app-a.ns-49.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.236.249:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-49.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Namespace: ns-50
Pod: vegeta-ns-50-7866c64849-lg5j9
Requests      [total, rate, throughput]         270000, 450.00, 450.00
Duration      [total, attack, wait]             10m0s, 10m0s, 3.715ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.109ms, 4.266ms, 3.96ms, 4.591ms, 5.146ms, 7.98ms, 395.593ms
Bytes In      [total, mean]                     740721516, 2743.41
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:270000  
Error Set:

```
