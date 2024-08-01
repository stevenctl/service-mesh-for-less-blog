```
Namespace: ns-1
Label Selector: app=vegeta1
Pod: vegeta1-7c5c5645d6-6tnwk
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.774ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.713ms, 10.338ms, 6.934ms, 16.867ms, 26.127ms, 58.65ms, 341.052ms
Bytes In      [total, mean]                     362844330, 3023.70
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-696856bc96-j4rb8
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.13ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.712ms, 9.184ms, 6.943ms, 14.293ms, 20.971ms, 42.54ms, 144.083ms
Bytes In      [total, mean]                     362952302, 3024.60
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Namespace: ns-2
Label Selector: app=vegeta1
Pod: vegeta1-9c7c4f759-mxlk7
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.476ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.811ms, 8.204ms, 6.797ms, 10.674ms, 15.357ms, 33.593ms, 148.166ms
Bytes In      [total, mean]                     362834934, 3023.62
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-5f9f7f9569-wwsvw
Requests      [total, rate, throughput]         120000, 200.00, 199.83
Duration      [total, attack, wait]             10m0s, 10m0s, 8.157ms
Latencies     [min, mean, 50, 90, 95, 99, max]  5.195ms, 49.013ms, 6.764ms, 18.18ms, 194.982ms, 288.576ms, 30.029s
Bytes In      [total, mean]                     362684997, 3022.37
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           99.92%
Status Codes  [code:count]                      0:100  200:119900  
Error Set:
Get "http://tier-1-app-b.ns-2.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.237.228:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-b.ns-2.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Failed to parse latencies for pod vegeta2-5f9f7f9569-wwsvw in namespace ns-2
Namespace: ns-3
Label Selector: app=vegeta1
Pod: vegeta1-8487db45b-k5fh6
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.753ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.71ms, 9.951ms, 6.85ms, 15.429ms, 23.156ms, 54.062ms, 313.006ms
Bytes In      [total, mean]                     362725893, 3022.72
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-7fccc88dfd-tpqbg
Requests      [total, rate, throughput]         120000, 200.00, 199.67
Duration      [total, attack, wait]             10m0s, 10m0s, 6.227ms
Latencies     [min, mean, 50, 90, 95, 99, max]  5.136ms, 117.514ms, 7.249ms, 252.681ms, 304.842ms, 437.332ms, 30.029s
Bytes In      [total, mean]                     362080513, 3017.34
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           99.83%
Status Codes  [code:count]                      0:200  200:119800  
Error Set:
Get "http://tier-1-app-b.ns-3.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.230.126:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-b.ns-3.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Failed to parse latencies for pod vegeta2-7fccc88dfd-tpqbg in namespace ns-3
Namespace: ns-4
Label Selector: app=vegeta1
Pod: vegeta1-69f4fbff4f-9gjqs
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.342ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.78ms, 9.918ms, 6.895ms, 14.157ms, 21.249ms, 76.792ms, 271.099ms
Bytes In      [total, mean]                     362708898, 3022.57
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-bbf94995f-gvwvl
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.706ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.753ms, 9.998ms, 7.177ms, 15.86ms, 24.97ms, 53.281ms, 218.14ms
Bytes In      [total, mean]                     362855641, 3023.80
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Namespace: ns-5
Label Selector: app=vegeta1
Pod: vegeta1-6598bf477d-lh8bb
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 8.047ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.958ms, 32.411ms, 6.849ms, 14.659ms, 76.977ms, 271.913ms, 16.221s
Bytes In      [total, mean]                     362838450, 3023.65
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Failed to parse latencies for pod vegeta1-6598bf477d-lh8bb in namespace ns-5
Label Selector: app=vegeta2
Pod: vegeta2-56d746b9d4-bbhnv
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.458ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.726ms, 11.742ms, 7.062ms, 19.377ms, 31.376ms, 70.716ms, 557.646ms
Bytes In      [total, mean]                     362874033, 3023.95
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Namespace: ns-6
Label Selector: app=vegeta1
Pod: vegeta1-69867d4779-hsntg
Requests      [total, rate, throughput]         120000, 200.00, 199.97
Duration      [total, attack, wait]             10m0s, 10m0s, 6.812ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.976ms, 48.694ms, 6.911ms, 39.997ms, 182.198ms, 284.594ms, 30.028s
Bytes In      [total, mean]                     362323696, 3019.36
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           99.98%
Status Codes  [code:count]                      0:19  200:119981  
Error Set:
Get "http://tier-1-app-a.ns-6.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.239.121:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-6.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Failed to parse latencies for pod vegeta1-69867d4779-hsntg in namespace ns-6
Label Selector: app=vegeta2
Pod: vegeta2-7b6656c6c7-4mclz
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.425ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.597ms, 10.326ms, 6.716ms, 10.595ms, 16.272ms, 143.835ms, 541.284ms
Bytes In      [total, mean]                     362604079, 3021.70
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Namespace: ns-7
Label Selector: app=vegeta1
Pod: vegeta1-67fb48d5dd-x8rl4
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 5.806ms
Latencies     [min, mean, 50, 90, 95, 99, max]  5.269ms, 22.118ms, 7.06ms, 12.872ms, 22.093ms, 302.256ms, 7.235s
Bytes In      [total, mean]                     363093286, 3025.78
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Failed to parse latencies for pod vegeta1-67fb48d5dd-x8rl4 in namespace ns-7
Label Selector: app=vegeta2
Pod: vegeta2-d794fdf46-pdttk
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.265ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.69ms, 31.072ms, 7.223ms, 68.414ms, 217.965ms, 350.679ms, 705.253ms
Bytes In      [total, mean]                     362773382, 3023.11
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Namespace: ns-8
Label Selector: app=vegeta1
Pod: vegeta1-cb8cf77b5-kpvt7
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.104ms
Latencies     [min, mean, 50, 90, 95, 99, max]  5.07ms, 22.25ms, 7.166ms, 24.999ms, 43.404ms, 250.258ms, 7.23s
Bytes In      [total, mean]                     362257299, 3018.81
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Failed to parse latencies for pod vegeta1-cb8cf77b5-kpvt7 in namespace ns-8
Label Selector: app=vegeta2
Pod: vegeta2-6d4bf44975-8cmfh
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 8.429ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.724ms, 28.589ms, 7.264ms, 72.209ms, 195.5ms, 310.707ms, 592.042ms
Bytes In      [total, mean]                     362365662, 3019.71
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Namespace: ns-9
Label Selector: app=vegeta1
Pod: vegeta1-6cf79758c4-mrpt6
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.388ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.835ms, 11.531ms, 6.814ms, 17.433ms, 35.389ms, 101.559ms, 412.97ms
Bytes In      [total, mean]                     362998647, 3024.99
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-6d5bd67988-947vw
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 13.392ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.781ms, 8.092ms, 6.724ms, 10.573ms, 15.626ms, 34.603ms, 200.615ms
Bytes In      [total, mean]                     362833278, 3023.61
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Namespace: ns-10
Label Selector: app=vegeta1
Pod: vegeta1-7d89c44bf8-rqs8f
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.213ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.686ms, 8.185ms, 6.671ms, 11.117ms, 16.154ms, 34.363ms, 124.139ms
Bytes In      [total, mean]                     363787678, 3031.56
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-6c7f866b44-tw8xh
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.222ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.523ms, 9.455ms, 6.473ms, 16.227ms, 25.262ms, 52.232ms, 175.881ms
Bytes In      [total, mean]                     363570630, 3029.76
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Namespace: ns-11
Label Selector: app=vegeta1
Pod: vegeta1-55fdbd65bf-wx4p2
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.367ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.755ms, 28.29ms, 7.105ms, 82.168ms, 191.772ms, 304.464ms, 571.013ms
Bytes In      [total, mean]                     363552353, 3029.60
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-7687f569cf-9gvhz
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.767ms
Latencies     [min, mean, 50, 90, 95, 99, max]  5.052ms, 34.387ms, 6.725ms, 14.991ms, 219.327ms, 278.88ms, 16.222s
Bytes In      [total, mean]                     363553682, 3029.61
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Failed to parse latencies for pod vegeta2-7687f569cf-9gvhz in namespace ns-11
Namespace: ns-12
Label Selector: app=vegeta1
Pod: vegeta1-65764bb9b4-r8p2h
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 5.572ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.802ms, 10.067ms, 6.764ms, 17.468ms, 27.674ms, 57.192ms, 231.849ms
Bytes In      [total, mean]                     363791907, 3031.60
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-dd9878b46-6ss22
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.884ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.764ms, 10.225ms, 7.012ms, 17.146ms, 25.836ms, 51.979ms, 307.319ms
Bytes In      [total, mean]                     363676505, 3030.64
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Namespace: ns-13
Label Selector: app=vegeta1
Pod: vegeta1-9f7fb965f-g546g
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.173ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.915ms, 7.789ms, 6.554ms, 10.119ms, 14.672ms, 27.772ms, 118.609ms
Bytes In      [total, mean]                     363790927, 3031.59
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-6f67dccd97-w7nrb
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.415ms
Latencies     [min, mean, 50, 90, 95, 99, max]  5.096ms, 71.56ms, 7.162ms, 317.81ms, 447.536ms, 638.552ms, 7.202s
Bytes In      [total, mean]                     363973956, 3033.12
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Failed to parse latencies for pod vegeta2-6f67dccd97-w7nrb in namespace ns-13
Namespace: ns-14
Label Selector: app=vegeta1
Pod: vegeta1-6896745694-jfxvv
Requests      [total, rate, throughput]         120000, 200.02, 200.02
Duration      [total, attack, wait]             10m0s, 10m0s, 6.592ms
Latencies     [min, mean, 50, 90, 95, 99, max]  5.065ms, 48.62ms, 7.254ms, 121.383ms, 380.539ms, 596.285ms, 1.079s
Bytes In      [total, mean]                     363850575, 3032.09
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Failed to parse latencies for pod vegeta1-6896745694-jfxvv in namespace ns-14
Label Selector: app=vegeta2
Pod: vegeta2-7d47fb46d8-fc5ng
Requests      [total, rate, throughput]         120000, 200.00, 199.99
Duration      [total, attack, wait]             10m0s, 10m0s, 20.648ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.843ms, 8.784ms, 6.796ms, 12.795ms, 19.392ms, 39.949ms, 211.967ms
Bytes In      [total, mean]                     363559924, 3029.67
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Namespace: ns-15
Label Selector: app=vegeta1
Pod: vegeta1-78f5b5f857-5vxv6
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.009ms
Latencies     [min, mean, 50, 90, 95, 99, max]  5.013ms, 9.87ms, 7.143ms, 15.848ms, 23.274ms, 49.013ms, 192.267ms
Bytes In      [total, mean]                     364044509, 3033.70
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-55df4c575f-wr4wm
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 7.665ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.973ms, 9.371ms, 6.881ms, 11.231ms, 16.915ms, 75.562ms, 335.2ms
Bytes In      [total, mean]                     364024639, 3033.54
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Namespace: ns-16
Label Selector: app=vegeta1
Pod: vegeta1-d9dbbfcdd-8jc6j
Requests      [total, rate, throughput]         120000, 200.00, 199.33
Duration      [total, attack, wait]             10m0s, 10m0s, 6.274ms
Latencies     [min, mean, 50, 90, 95, 99, max]  5.062ms, 204.338ms, 7.534ms, 274.493ms, 340.541ms, 733.137ms, 30.03s
Bytes In      [total, mean]                     362722907, 3022.69
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           99.67%
Status Codes  [code:count]                      0:400  200:119600  
Error Set:
Get "http://tier-1-app-a.ns-16.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.229.224:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-a.ns-16.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Failed to parse latencies for pod vegeta1-d9dbbfcdd-8jc6j in namespace ns-16
Label Selector: app=vegeta2
Pod: vegeta2-77df9448cd-vcnrm
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 5.803ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.976ms, 7.552ms, 6.66ms, 9.482ms, 12.938ms, 21.848ms, 194.422ms
Bytes In      [total, mean]                     363787786, 3031.56
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Namespace: ns-17
Label Selector: app=vegeta1
Pod: vegeta1-57988878c5-pbsjx
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 8.594ms
Latencies     [min, mean, 50, 90, 95, 99, max]  5.103ms, 31.478ms, 6.99ms, 74.898ms, 223.326ms, 375.866ms, 679.51ms
Bytes In      [total, mean]                     363957719, 3032.98
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-759b7cf757-2qwrx
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.989ms
Latencies     [min, mean, 50, 90, 95, 99, max]  5.169ms, 17.294ms, 6.81ms, 11.201ms, 18.645ms, 192.956ms, 7.2s
Bytes In      [total, mean]                     363672191, 3030.60
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Failed to parse latencies for pod vegeta2-759b7cf757-2qwrx in namespace ns-17
Namespace: ns-18
Label Selector: app=vegeta1
Pod: vegeta1-7fbccbb56b-n5dmw
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 19.171ms
Latencies     [min, mean, 50, 90, 95, 99, max]  5.051ms, 41.838ms, 7.104ms, 41.812ms, 199.162ms, 383.21ms, 16.125s
Bytes In      [total, mean]                     363854528, 3032.12
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Failed to parse latencies for pod vegeta1-7fbccbb56b-n5dmw in namespace ns-18
Label Selector: app=vegeta2
Pod: vegeta2-658c7cbc96-nr5tq
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.314ms
Latencies     [min, mean, 50, 90, 95, 99, max]  5.207ms, 21.424ms, 7.103ms, 14.046ms, 23.661ms, 291.911ms, 7.541s
Bytes In      [total, mean]                     364063114, 3033.86
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Failed to parse latencies for pod vegeta2-658c7cbc96-nr5tq in namespace ns-18
Namespace: ns-19
Label Selector: app=vegeta1
Pod: vegeta1-5c6975bcd9-b7ckk
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.303ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.971ms, 12.015ms, 6.954ms, 22.277ms, 37.324ms, 83.35ms, 287.327ms
Bytes In      [total, mean]                     364070647, 3033.92
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-74977f59b7-xg2f6
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 5.786ms
Latencies     [min, mean, 50, 90, 95, 99, max]  5.055ms, 21.635ms, 6.562ms, 9.509ms, 17.293ms, 314.707ms, 7.269s
Bytes In      [total, mean]                     363909263, 3032.58
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Failed to parse latencies for pod vegeta2-74977f59b7-xg2f6 in namespace ns-19
Namespace: ns-20
Label Selector: app=vegeta1
Pod: vegeta1-756d9947d9-8ct6g
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 8.365ms
Latencies     [min, mean, 50, 90, 95, 99, max]  5.058ms, 47.821ms, 7.053ms, 127.341ms, 384.454ms, 588.869ms, 1.021s
Bytes In      [total, mean]                     363359037, 3027.99
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Failed to parse latencies for pod vegeta1-756d9947d9-8ct6g in namespace ns-20
Label Selector: app=vegeta2
Pod: vegeta2-64544cb49f-xp2qf
Requests      [total, rate, throughput]         120000, 200.00, 199.83
Duration      [total, attack, wait]             10m0s, 10m0s, 6.154ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.822ms, 58.366ms, 6.547ms, 168.542ms, 258.293ms, 305.351ms, 30.03s
Bytes In      [total, mean]                     363630990, 3030.26
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           99.92%
Status Codes  [code:count]                      0:100  200:119900  
Error Set:
Get "http://tier-1-app-b.ns-20.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.230.224:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-b.ns-20.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)

Failed to parse latencies for pod vegeta2-64544cb49f-xp2qf in namespace ns-20
Namespace: ns-21
Label Selector: app=vegeta1
Pod: vegeta1-65f7d859d6-696w4
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 5.519ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.988ms, 7.994ms, 6.616ms, 10.728ms, 15.556ms, 32.124ms, 95.659ms
Bytes In      [total, mean]                     363910152, 3032.58
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-5c68576bc6-2crm6
Requests      [total, rate, throughput]         120000, 200.00, 199.67
Duration      [total, attack, wait]             10m0s, 10m0s, 9.051ms
Latencies     [min, mean, 50, 90, 95, 99, max]  5.17ms, 127.857ms, 7.328ms, 229.193ms, 304.197ms, 723.198ms, 30.029s
Bytes In      [total, mean]                     363636835, 3030.31
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           99.83%
Status Codes  [code:count]                      0:200  200:119800  
Error Set:
Get "http://tier-1-app-b.ns-21.svc.cluster.local:8080": context deadline exceeded (Client.Timeout exceeded while awaiting headers)
Get "http://tier-1-app-b.ns-21.svc.cluster.local:8080": dial tcp 0.0.0.0:0->34.118.235.42:8080: i/o timeout (Client.Timeout exceeded while awaiting headers)

Failed to parse latencies for pod vegeta2-5c68576bc6-2crm6 in namespace ns-21
Namespace: ns-22
Label Selector: app=vegeta1
Pod: vegeta1-6c554bf5cf-vwsf4
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 7.406ms
Latencies     [min, mean, 50, 90, 95, 99, max]  5.053ms, 19.075ms, 6.982ms, 12.415ms, 19.295ms, 236.872ms, 7.278s
Bytes In      [total, mean]                     363802387, 3031.69
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Failed to parse latencies for pod vegeta1-6c554bf5cf-vwsf4 in namespace ns-22
Label Selector: app=vegeta2
Pod: vegeta2-55f69fc77-tn4n5
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.028ms
Latencies     [min, mean, 50, 90, 95, 99, max]  5.184ms, 10.945ms, 7.11ms, 14.467ms, 24.216ms, 100.352ms, 387.055ms
Bytes In      [total, mean]                     363930226, 3032.75
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Namespace: ns-23
Label Selector: app=vegeta1
Pod: vegeta1-74f5668f64-85vgd
Requests      [total, rate, throughput]         120000, 200.02, 200.02
Duration      [total, attack, wait]             10m0s, 10m0s, 6.311ms
Latencies     [min, mean, 50, 90, 95, 99, max]  5.019ms, 7.886ms, 6.771ms, 10.639ms, 14.418ms, 24.733ms, 99.468ms
Bytes In      [total, mean]                     363908906, 3032.57
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-69c4b5fbd6-txw9s
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.397ms
Latencies     [min, mean, 50, 90, 95, 99, max]  5.126ms, 33.512ms, 7.177ms, 72.479ms, 246.095ms, 409.857ms, 750.706ms
Bytes In      [total, mean]                     363988833, 3033.24
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Namespace: ns-24
Label Selector: app=vegeta1
Pod: vegeta1-6c4bcb6c45-mt4b4
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.111ms
Latencies     [min, mean, 50, 90, 95, 99, max]  5.026ms, 29.543ms, 6.811ms, 94.32ms, 199.545ms, 326.458ms, 744.248ms
Bytes In      [total, mean]                     364188603, 3034.91
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-898bd8875-ghvlp
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 6.682ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.882ms, 19.652ms, 6.456ms, 11.266ms, 18.458ms, 271.289ms, 7.257s
Bytes In      [total, mean]                     363671271, 3030.59
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Failed to parse latencies for pod vegeta2-898bd8875-ghvlp in namespace ns-24
Namespace: ns-25
Label Selector: app=vegeta1
Pod: vegeta1-55f7d58f4b-zj9mt
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 7.296ms
Latencies     [min, mean, 50, 90, 95, 99, max]  5.175ms, 45.302ms, 6.983ms, 38.384ms, 273.052ms, 373.808ms, 16.145s
Bytes In      [total, mean]                     363955219, 3032.96
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

Failed to parse latencies for pod vegeta1-55f7d58f4b-zj9mt in namespace ns-25
Label Selector: app=vegeta2
Pod: vegeta2-798587fbbd-l5svk
Requests      [total, rate, throughput]         120000, 200.00, 200.00
Duration      [total, attack, wait]             10m0s, 10m0s, 5.56ms
Latencies     [min, mean, 50, 90, 95, 99, max]  5.046ms, 8.104ms, 6.853ms, 10.921ms, 15.548ms, 28.794ms, 209.435ms
Bytes In      [total, mean]                     364029976, 3033.58
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:120000  
Error Set:

```
