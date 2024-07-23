```
Namespace: ns-1
Label Selector: app=vegeta1
Pod: vegeta1-564984cd56-js4rn
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.599ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.472ms, 5.046ms, 4.998ms, 5.326ms, 5.476ms, 6.006ms, 18.954ms
Bytes In      [total, mean]                     32536972, 2711.41
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-7dbcd444f8-7pq2g
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.276ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.465ms, 5.256ms, 5.195ms, 5.611ms, 5.773ms, 6.238ms, 14.641ms
Bytes In      [total, mean]                     32537009, 2711.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Namespace: ns-2
Label Selector: app=vegeta1
Pod: vegeta1-68fbbc85c5-d4hdf
Error Set:
Requests      [total, rate, throughput]         12000, 200.01, 199.98
Duration      [total, attack, wait]             1m0s, 59.996s, 4.834ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.428ms, 5.074ms, 5.02ms, 5.416ms, 5.563ms, 6.076ms, 19.589ms
Bytes In      [total, mean]                     32548063, 2712.34
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           99.99%
Status Codes  [code:count]                      200:11999  500:1  
Error Set:
500 Internal Server Error

Label Selector: app=vegeta2
Pod: vegeta2-68865b8c9c-8q9cv
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 199.97
Duration      [total, attack, wait]             1m0s, 59.995s, 4.84ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.54ms, 5.161ms, 5.106ms, 5.469ms, 5.597ms, 6.24ms, 20.458ms
Bytes In      [total, mean]                     32559040, 2713.25
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           99.98%
Status Codes  [code:count]                      200:11998  500:2  
Error Set:
500 Internal Server Error

Namespace: ns-3
Label Selector: app=vegeta1
Pod: vegeta1-7dd8759f4b-hlqf2
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             59.999s, 59.995s, 4.944ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.492ms, 5.249ms, 5.199ms, 5.605ms, 5.772ms, 6.341ms, 21.413ms
Bytes In      [total, mean]                     32537164, 2711.43
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-c7f7c64d8-mk6m8
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.034ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.617ms, 5.22ms, 5.159ms, 5.522ms, 5.665ms, 6.306ms, 21.152ms
Bytes In      [total, mean]                     32536789, 2711.40
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Namespace: ns-4
Label Selector: app=vegeta1
Pod: vegeta1-c544b8d45-s2ncd
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.286ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.578ms, 5.291ms, 5.235ms, 5.616ms, 5.76ms, 6.399ms, 20.419ms
Bytes In      [total, mean]                     32560987, 2713.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-5c86f48dd7-b7tc2
500 Internal Server Error
Requests      [total, rate, throughput]         12000, 200.02, 153.87
Duration      [total, attack, wait]             59.998s, 59.995s, 3.444ms
Latencies     [min, mean, 50, 90, 95, 99, max]  2.958ms, 4.705ms, 4.936ms, 5.315ms, 5.471ms, 5.935ms, 24.055ms
Bytes In      [total, mean]                     30131040, 2510.92
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           76.93%
Status Codes  [code:count]                      200:9232  500:2768  
Error Set:
500 Internal Server Error

Namespace: ns-5
Label Selector: app=vegeta1
Pod: vegeta1-84684f6ccb-d2xgg
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             59.999s, 59.994s, 4.94ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.464ms, 5.146ms, 5.077ms, 5.515ms, 5.67ms, 6.279ms, 18.524ms
Bytes In      [total, mean]                     32549066, 2712.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-9c788c9b6-8x8xq
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 199.99
Duration      [total, attack, wait]             1m0s, 59.995s, 7.419ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.68ms, 5.421ms, 5.361ms, 5.816ms, 6.019ms, 6.677ms, 18.307ms
Bytes In      [total, mean]                     32537252, 2711.44
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Namespace: ns-6
Label Selector: app=vegeta1
Pod: vegeta1-6c5969b779-cxzcd
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.477ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.514ms, 5.173ms, 5.122ms, 5.515ms, 5.641ms, 6.104ms, 15.971ms
Bytes In      [total, mean]                     32536784, 2711.40
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-fc86ff9d9-szw69
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.271ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.606ms, 5.276ms, 5.222ms, 5.59ms, 5.733ms, 6.345ms, 17.555ms
Bytes In      [total, mean]                     32549370, 2712.45
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Namespace: ns-7
Label Selector: app=vegeta1
Pod: vegeta1-7744779d74-7tqqt
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.043ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.545ms, 5.347ms, 5.27ms, 5.763ms, 5.993ms, 6.788ms, 18.967ms
Bytes In      [total, mean]                     32560821, 2713.40
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-5c5cb9d556-xgczg
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.479ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.558ms, 5.313ms, 5.244ms, 5.676ms, 5.883ms, 6.511ms, 16.806ms
Bytes In      [total, mean]                     32573147, 2714.43
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Namespace: ns-8
Label Selector: app=vegeta1
Pod: vegeta1-6849bdd689-p6m6z
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 4.924ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.442ms, 5.087ms, 5.031ms, 5.429ms, 5.579ms, 6.162ms, 17.964ms
Bytes In      [total, mean]                     32548943, 2712.41
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-564cd567d7-554qc
Error Set:
500 Internal Server Error
Requests      [total, rate, throughput]         12000, 200.01, 200.00
Duration      [total, attack, wait]             1m0s, 59.996s, 5.623ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.658ms, 5.591ms, 5.528ms, 6.088ms, 6.303ms, 6.943ms, 16.63ms
Bytes In      [total, mean]                     32549220, 2712.43
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Namespace: ns-9
Label Selector: app=vegeta1
Pod: vegeta1-74ffb5bfc6-fqlb4
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.714ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.461ms, 5.131ms, 5.067ms, 5.472ms, 5.62ms, 6.262ms, 17.103ms
Bytes In      [total, mean]                     32573373, 2714.45
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-786d54d8db-cqmtp
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.994s, 5.153ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.562ms, 5.206ms, 5.146ms, 5.533ms, 5.681ms, 6.349ms, 14.532ms
Bytes In      [total, mean]                     32561074, 2713.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Namespace: ns-10
Label Selector: app=vegeta1
Pod: vegeta1-585fcf54cb-2llx9
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.333ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.446ms, 5.116ms, 5.059ms, 5.452ms, 5.579ms, 6.154ms, 19.454ms
Bytes In      [total, mean]                     32657043, 2721.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-f7bbd5f86-tdjgn
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.274ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.522ms, 5.212ms, 5.147ms, 5.556ms, 5.725ms, 6.324ms, 25.145ms
Bytes In      [total, mean]                     32633157, 2719.43
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Namespace: ns-11
Label Selector: app=vegeta1
Pod: vegeta1-7ff9544d57-wjpnh
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.34ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.545ms, 5.207ms, 5.136ms, 5.55ms, 5.701ms, 6.319ms, 19.026ms
Bytes In      [total, mean]                     32657011, 2721.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-7cd4458c47-p95t6
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.248ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.646ms, 5.552ms, 5.468ms, 6.056ms, 6.307ms, 7.173ms, 24.879ms
Bytes In      [total, mean]                     32669056, 2722.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Namespace: ns-12
Label Selector: app=vegeta1
Pod: vegeta1-6646cbf758-52qzr
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.253ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.482ms, 5.467ms, 5.405ms, 5.925ms, 6.127ms, 6.712ms, 18.263ms
Bytes In      [total, mean]                     32645206, 2720.43
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-6c9865bc8d-wbxwt
Error Set:
500 Internal Server Error
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.026ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.429ms, 5.106ms, 5.046ms, 5.416ms, 5.565ms, 6.079ms, 20.308ms
Bytes In      [total, mean]                     32645094, 2720.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Namespace: ns-13
Label Selector: app=vegeta1
Pod: vegeta1-5ccb4d78c-7256b
Error Set:
500 Internal Server Error
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.014ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.563ms, 5.216ms, 5.152ms, 5.588ms, 5.755ms, 6.453ms, 15.26ms
Bytes In      [total, mean]                     32633138, 2719.43
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-55f5cd9ffc-pc9fl
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.159ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.626ms, 5.254ms, 5.192ms, 5.575ms, 5.725ms, 6.45ms, 17.512ms
Bytes In      [total, mean]                     32669024, 2722.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Namespace: ns-14
Label Selector: app=vegeta1
Pod: vegeta1-84768f9556-85gqx
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.278ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.341ms, 5.09ms, 5.037ms, 5.407ms, 5.553ms, 6.15ms, 19.748ms
Bytes In      [total, mean]                     32632760, 2719.40
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-5c4744cccd-5skpk
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.7ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.615ms, 5.498ms, 5.465ms, 5.974ms, 6.157ms, 6.662ms, 20.013ms
Bytes In      [total, mean]                     32621280, 2718.44
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Namespace: ns-15
Label Selector: app=vegeta1
Pod: vegeta1-76b74794c7-h2jcw
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 199.98
Duration      [total, attack, wait]             1m0s, 59.995s, 5.309ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.87ms, 5.19ms, 5.138ms, 5.52ms, 5.644ms, 6.123ms, 14.957ms
Bytes In      [total, mean]                     32632529, 2719.38
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           99.99%
Status Codes  [code:count]                      200:11999  500:1  
Error Set:
500 Internal Server Error

Label Selector: app=vegeta2
Pod: vegeta2-8fb48c495-ffk69
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.036ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.42ms, 5.03ms, 4.988ms, 5.294ms, 5.438ms, 5.923ms, 18.689ms
Bytes In      [total, mean]                     32657270, 2721.44
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Namespace: ns-16
Label Selector: app=vegeta1
Pod: vegeta1-5fbc58f746-cmhv9
Error Set:
500 Internal Server Error
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.161ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.413ms, 5.03ms, 4.974ms, 5.321ms, 5.497ms, 6.057ms, 19.608ms
Bytes In      [total, mean]                     32644747, 2720.40
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-64cc6789d8-tkz4h
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.711ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.658ms, 5.317ms, 5.268ms, 5.626ms, 5.772ms, 6.291ms, 15.513ms
Bytes In      [total, mean]                     32656755, 2721.40
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Namespace: ns-17
Label Selector: app=vegeta1
Pod: vegeta1-5b5f55c675-ghzzq
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 199.98
Duration      [total, attack, wait]             1m0s, 59.995s, 5.221ms
Latencies     [min, mean, 50, 90, 95, 99, max]  788.699µs, 5.485ms, 5.444ms, 5.826ms, 5.982ms, 6.596ms, 15.294ms
Bytes In      [total, mean]                     32618541, 2718.21
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           99.99%
Status Codes  [code:count]                      0:1  200:11999  
Error Set:
Get "http://tier-1-app-a.ns-17.svc.cluster.local:8080": net/http: HTTP/1.x transport connection broken: malformed HTTP response "\x00\x00\x12\x04\x00\x00\x00\x00\x00\x00\x04\x00\x00\xff\xff\x00\x05\x00\x00@\x00\x00\x06\x01\x00\x00\x00"

Failed to parse latencies for pod vegeta1-5b5f55c675-ghzzq in namespace ns-17
Label Selector: app=vegeta2
Pod: vegeta2-c4785bc6f-rjhfw
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 4.635ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.435ms, 5.086ms, 5.027ms, 5.412ms, 5.559ms, 6.083ms, 17.235ms
Bytes In      [total, mean]                     32657056, 2721.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Namespace: ns-18
Label Selector: app=vegeta1
Pod: vegeta1-5466c8984-fg8cq
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 4.86ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.478ms, 5.13ms, 5.079ms, 5.461ms, 5.593ms, 6.172ms, 15.296ms
Bytes In      [total, mean]                     32656942, 2721.41
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-6566d7c9d-5jgdw
Error Set:
500 Internal Server Error
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 4.81ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.43ms, 5.125ms, 5.075ms, 5.491ms, 5.612ms, 6.051ms, 15.792ms
Bytes In      [total, mean]                     32632950, 2719.41
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Namespace: ns-19
Label Selector: app=vegeta1
Pod: vegeta1-6f7bb5b977-wfqmn
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.897ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.629ms, 5.479ms, 5.436ms, 5.88ms, 6.053ms, 6.743ms, 16.058ms
Bytes In      [total, mean]                     32657119, 2721.43
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-5b5cfcf99f-wdwz6
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 6.285ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.582ms, 5.28ms, 5.22ms, 5.63ms, 5.802ms, 6.402ms, 18.377ms
Bytes In      [total, mean]                     32645307, 2720.44
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Namespace: ns-20
Label Selector: app=vegeta1
Pod: vegeta1-5f786cdf77-5lbbz
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 4.969ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.481ms, 5.098ms, 5.032ms, 5.405ms, 5.577ms, 6.238ms, 15.358ms
Bytes In      [total, mean]                     32669020, 2722.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-86cc5cd59-knbrn
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 199.98
Duration      [total, attack, wait]             1m0s, 59.995s, 5.262ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.825ms, 5.42ms, 5.366ms, 5.786ms, 5.966ms, 6.688ms, 20.903ms
Bytes In      [total, mean]                     32668239, 2722.35
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           99.99%
Status Codes  [code:count]                      200:11999  500:1  
Error Set:
500 Internal Server Error

Namespace: ns-21
Label Selector: app=vegeta1
Pod: vegeta1-579d6bdb4-fb2kc
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.01, 200.00
Duration      [total, attack, wait]             1m0s, 59.996s, 5.157ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.678ms, 5.459ms, 5.424ms, 5.812ms, 5.968ms, 6.437ms, 14.463ms
Bytes In      [total, mean]                     32633012, 2719.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-67d7c89786-7sdzt
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 199.98
Duration      [total, attack, wait]             1m0s, 59.995s, 4.695ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.389ms, 4.922ms, 4.886ms, 5.162ms, 5.29ms, 5.764ms, 14.804ms
Bytes In      [total, mean]                     32620253, 2718.35
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           99.99%
Status Codes  [code:count]                      200:11999  500:1  
Error Set:
500 Internal Server Error

Namespace: ns-22
Label Selector: app=vegeta1
Pod: vegeta1-fd655f86c-69df9
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             59.999s, 59.994s, 5.01ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.452ms, 5.113ms, 5.058ms, 5.449ms, 5.588ms, 6.162ms, 14.336ms
Bytes In      [total, mean]                     32657125, 2721.43
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-8d965585-7xwgl
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 199.98
Duration      [total, attack, wait]             1m0s, 59.995s, 4.953ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.978ms, 5.005ms, 4.951ms, 5.301ms, 5.456ms, 6.021ms, 20.208ms
Bytes In      [total, mean]                     32656082, 2721.34
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           99.99%
Status Codes  [code:count]                      200:11999  500:1  
Error Set:
500 Internal Server Error

Namespace: ns-23
Label Selector: app=vegeta1
Pod: vegeta1-5df4b6c45d-fzmsr
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             59.999s, 59.995s, 4.796ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.532ms, 5.233ms, 5.159ms, 5.625ms, 5.802ms, 6.462ms, 21.544ms
Bytes In      [total, mean]                     32657133, 2721.43
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-7fdc4cc648-q47x4
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.104ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.637ms, 5.295ms, 5.242ms, 5.617ms, 5.772ms, 6.369ms, 19.599ms
Bytes In      [total, mean]                     32632986, 2719.42
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Namespace: ns-24
Label Selector: app=vegeta1
Pod: vegeta1-96f4b5db9-xm9mb
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.365ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.594ms, 5.2ms, 5.149ms, 5.504ms, 5.63ms, 6.117ms, 17.373ms
Bytes In      [total, mean]                     32632708, 2719.39
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-d8d557dc9-4jcmq
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.241ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.544ms, 5.324ms, 5.267ms, 5.698ms, 5.87ms, 6.428ms, 20.694ms
Bytes In      [total, mean]                     32621100, 2718.43
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Namespace: ns-25
Label Selector: app=vegeta1
Pod: vegeta1-676bbb5548-5vv2c
Status Codes  [code:count]                      200:12000  
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 200.00
Duration      [total, attack, wait]             1m0s, 59.995s, 5.061ms
Latencies     [min, mean, 50, 90, 95, 99, max]  4.489ms, 5.151ms, 5.084ms, 5.515ms, 5.665ms, 6.371ms, 19.819ms
Bytes In      [total, mean]                     32669156, 2722.43
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           100.00%
Status Codes  [code:count]                      200:12000  
Error Set:

Label Selector: app=vegeta2
Pod: vegeta2-78cdfd8b5d-59hs4
Error Set:
Requests      [total, rate, throughput]         12000, 200.02, 199.98
Duration      [total, attack, wait]             1m0s, 59.995s, 5.087ms
Latencies     [min, mean, 50, 90, 95, 99, max]  3.777ms, 5.093ms, 5.028ms, 5.412ms, 5.569ms, 6.16ms, 17.389ms
Bytes In      [total, mean]                     32668256, 2722.35
Bytes Out     [total, mean]                     0, 0.00
Success       [ratio]                           99.99%
Status Codes  [code:count]                      200:11999  500:1  
Error Set:
500 Internal Server Error

```
