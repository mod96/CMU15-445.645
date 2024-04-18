### Project 1 - Buffer Pool

before optimization (seems not working well...)
```
[info] total_page=6400, duration_ms=5000, latency=1, lru_k_size=16, bpm_size=64, scan_thread_cnt=8, get_thread_cnt=8
[info] benchmark start
[ 1.00] scan  6: total_cnt=1830       throughput=1828.172   avg_throughput=1828.172  
[ 1.00] scan  2: total_cnt=4          throughput=3.992      avg_throughput=3.992     
[ 1.01] get   2: total_cnt=1          throughput=0.994      avg_throughput=0.994     
[ 1.01] scan  7: total_cnt=1          throughput=0.988      avg_throughput=0.988     
[ 1.01] get   3: total_cnt=1          throughput=0.989      avg_throughput=0.989     
[ 1.01] get   4: total_cnt=1          throughput=0.987      avg_throughput=0.987     
[ 1.02] scan  5: total_cnt=1          throughput=0.984      avg_throughput=0.984     
[ 1.02] get   5: total_cnt=1          throughput=0.983      avg_throughput=0.983     
[ 1.02] get   6: total_cnt=1          throughput=0.982      avg_throughput=0.982     
[ 1.02] scan  4: total_cnt=1          throughput=0.980      avg_throughput=0.980     
[ 1.02] get   7: total_cnt=1          throughput=0.978      avg_throughput=0.978     
[ 1.03] get   1: total_cnt=1          throughput=0.975      avg_throughput=0.975     
[ 1.03] scan  3: total_cnt=1          throughput=0.975      avg_throughput=0.975     
[ 2.00] scan  6: total_cnt=3670       throughput=1838.162   avg_throughput=1833.167  
[ 2.02] get   5: total_cnt=15         throughput=13.972     avg_throughput=7.429     
[ 2.02] get   4: total_cnt=2          throughput=0.992      avg_throughput=0.990     
[ 2.02] scan  5: total_cnt=2          throughput=0.993      avg_throughput=0.989     
[ 3.00] scan  6: total_cnt=5508       throughput=1836.164   avg_throughput=1834.166  
[ 3.00] scan  0: total_cnt=1          throughput=0.333      avg_throughput=0.333     
[ 3.00] scan  2: total_cnt=5          throughput=0.500      avg_throughput=1.666     
[ 3.00] get   2: total_cnt=2          throughput=0.501      avg_throughput=0.666     
[ 3.01] scan  7: total_cnt=2          throughput=0.501      avg_throughput=0.664     
[ 3.01] get   3: total_cnt=2          throughput=0.500      avg_throughput=0.664     
[ 3.02] get   5: total_cnt=22         throughput=6.986      avg_throughput=7.282     
[ 3.02] scan  3: total_cnt=2          throughput=0.501      avg_throughput=0.662     
[ 3.02] get   0: total_cnt=1          throughput=0.331      avg_throughput=0.331     
[ 3.02] scan  1: total_cnt=1          throughput=0.331      avg_throughput=0.331     
[ 3.07] scan  5: total_cnt=3          throughput=0.954      avg_throughput=0.977     
[ 3.07] get   6: total_cnt=2          throughput=0.487      avg_throughput=0.651     
[ 3.07] scan  4: total_cnt=2          throughput=0.487      avg_throughput=0.651     
[ 3.08] get   7: total_cnt=2          throughput=0.487      avg_throughput=0.650     
[ 3.08] get   1: total_cnt=2          throughput=0.487      avg_throughput=0.650     
[ 4.02] get   5: total_cnt=813        throughput=790.210    avg_throughput=202.138   
[ 4.02] scan  2: total_cnt=6          throughput=0.979      avg_throughput=1.492     
[ 4.03] get   2: total_cnt=3          throughput=0.979      avg_throughput=0.745     
[ 4.03] scan  7: total_cnt=3          throughput=0.980      avg_throughput=0.744     
[ 4.03] get   3: total_cnt=3          throughput=0.981      avg_throughput=0.745     
[ 4.03] get   4: total_cnt=3          throughput=0.498      avg_throughput=0.744     
[ 4.03] scan  6: total_cnt=5575       throughput=64.985     avg_throughput=1382.003  
[ 4.07] scan  5: total_cnt=95         throughput=91.908     avg_throughput=23.330    
[ 4.08] scan  4: total_cnt=7          throughput=4.995      avg_throughput=1.718     
[ 4.08] scan  1: total_cnt=2          throughput=0.951      avg_throughput=0.491     
[ 4.08] scan  0: total_cnt=2          throughput=0.927      avg_throughput=0.490     
[ 5.01] get   6: total_cnt=3          throughput=0.517      avg_throughput=0.599     
[ 5.01] get   7: total_cnt=3          throughput=0.517      avg_throughput=0.599     
[ 5.01] get   1: total_cnt=3          throughput=0.517      avg_throughput=0.599     
[ 5.01] scan  3: total_cnt=3          throughput=0.503      avg_throughput=0.599     
[ 5.01] get   0: total_cnt=2          throughput=0.503      avg_throughput=0.399     
<<< BEGIN
scan: 1134.5541401273886
get: 320.0636942675159
>>> END
```

after parallelization
```
[info] total_page=6400, duration_ms=5000, latency=1, lru_k_size=16, bpm_size=64, scan_thread_cnt=8, get_thread_cnt=8
[info] benchmark start
[ 1.00] get   6: total_cnt=51         throughput=50.949     avg_throughput=50.949    
[ 1.00] get   1: total_cnt=50         throughput=49.850     avg_throughput=49.850    
[ 1.00] get   0: total_cnt=59         throughput=58.824     avg_throughput=58.824    
[ 1.00] scan  7: total_cnt=63         throughput=62.812     avg_throughput=62.812    
[ 1.01] get   4: total_cnt=70         throughput=69.513     avg_throughput=69.513    
[ 1.01] scan  1: total_cnt=54         throughput=53.571     avg_throughput=53.571    
[ 1.01] scan  6: total_cnt=60         throughput=59.583     avg_throughput=59.583    
[ 1.01] scan  0: total_cnt=61         throughput=60.456     avg_throughput=60.456    
[ 1.01] scan  2: total_cnt=57         throughput=56.492     avg_throughput=56.492    
[ 1.01] scan  3: total_cnt=59         throughput=58.532     avg_throughput=58.532    
[ 1.01] get   3: total_cnt=42         throughput=41.667     avg_throughput=41.667    
[ 1.01] get   7: total_cnt=55         throughput=54.402     avg_throughput=54.402    
[ 1.01] get   5: total_cnt=63         throughput=62.315     avg_throughput=62.315    
[ 1.01] scan  5: total_cnt=58         throughput=57.143     avg_throughput=57.143    
[ 1.02] scan  4: total_cnt=59         throughput=58.014     avg_throughput=58.014    
[ 1.02] get   2: total_cnt=51         throughput=50.049     avg_throughput=50.049    
[ 2.01] get   0: total_cnt=125        throughput=65.606     avg_throughput=62.220    
[ 2.01] get   4: total_cnt=144        throughput=73.705     avg_throughput=71.606    
[ 2.01] get   1: total_cnt=114        throughput=63.492     avg_throughput=56.688    
[ 2.01] scan  7: total_cnt=122        throughput=58.416     avg_throughput=60.606    
[ 2.02] scan  5: total_cnt=111        throughput=52.947     avg_throughput=55.060    
[ 2.02] get   6: total_cnt=129        throughput=76.772     avg_throughput=63.956    
[ 2.02] scan  3: total_cnt=124        throughput=64.356     avg_throughput=61.447    
[ 2.02] scan  1: total_cnt=122        throughput=67.127     avg_throughput=60.366    
[ 2.02] get   7: total_cnt=127        throughput=71.217     avg_throughput=62.809    
[ 2.02] scan  6: total_cnt=115        throughput=54.028     avg_throughput=56.790    
[ 2.03] scan  4: total_cnt=118        throughput=58.185     avg_throughput=58.099    
[ 2.03] scan  0: total_cnt=131        throughput=68.359     avg_throughput=64.437    
[ 2.03] get   2: total_cnt=121        throughput=68.966     avg_throughput=59.489    
[ 2.04] scan  2: total_cnt=119        throughput=60.370     avg_throughput=58.448    
[ 2.03] get   3: total_cnt=120        throughput=76.023     avg_throughput=58.997    
[ 2.04] get   5: total_cnt=126        throughput=61.284     avg_throughput=61.795    
[ 3.02] get   4: total_cnt=197        throughput=52.789     avg_throughput=65.340    
[ 3.02] scan  5: total_cnt=174        throughput=62.687     avg_throughput=57.597    
[ 3.02] get   0: total_cnt=186        throughput=60.039     avg_throughput=61.488    
[ 3.03] scan  3: total_cnt=184        throughput=59.465     avg_throughput=60.786    
[ 3.03] get   6: total_cnt=204        throughput=74.184     avg_throughput=67.371    
[ 3.03] scan  1: total_cnt=195        throughput=72.206     avg_throughput=64.314    
[ 3.03] get   1: total_cnt=187        throughput=71.569     avg_throughput=61.696    
[ 3.03] scan  6: total_cnt=178        throughput=62.500     avg_throughput=58.688    
[ 3.03] scan  4: total_cnt=185        throughput=66.866     avg_throughput=60.996    
[ 3.03] scan  0: total_cnt=191        throughput=59.940     avg_throughput=62.953    
[ 3.04] scan  7: total_cnt=189        throughput=65.239     avg_throughput=62.171    
[ 3.04] get   5: total_cnt=197        throughput=70.858     avg_throughput=64.781    
[ 3.04] get   7: total_cnt=197        throughput=68.493     avg_throughput=64.717    
[ 3.04] scan  2: total_cnt=180        throughput=60.456     avg_throughput=59.113    
[ 3.04] get   3: total_cnt=199        throughput=78.140     avg_throughput=65.353    
[ 3.08] get   2: total_cnt=192        throughput=68.204     avg_throughput=62.439    
[ 4.03] scan  5: total_cnt=235        throughput=60.396     avg_throughput=58.298    
[ 4.03] get   4: total_cnt=265        throughput=66.929     avg_throughput=65.741    
[ 4.03] get   6: total_cnt=270        throughput=65.803     avg_throughput=66.981    
[ 4.04] scan  0: total_cnt=249        throughput=57.769     avg_throughput=61.664    
[ 4.04] get   1: total_cnt=261        throughput=73.559     avg_throughput=64.652    
[ 4.04] scan  3: total_cnt=244        throughput=59.289     avg_throughput=60.411    
[ 4.04] scan  6: total_cnt=249        throughput=70.577     avg_throughput=61.649    
[ 4.04] scan  4: total_cnt=241        throughput=55.666     avg_throughput=59.668    
[ 4.04] get   0: total_cnt=259        throughput=71.709     avg_throughput=64.061    
[ 4.04] scan  1: total_cnt=265        throughput=69.102     avg_throughput=65.513    
[ 4.04] scan  7: total_cnt=248        throughput=58.765     avg_throughput=61.325    
[ 4.05] get   7: total_cnt=262        throughput=64.293     avg_throughput=64.612    
[ 4.06] get   5: total_cnt=269        throughput=70.588     avg_throughput=66.240    
[ 4.06] scan  2: total_cnt=249        throughput=67.847     avg_throughput=61.300    
[ 4.07] get   3: total_cnt=263        throughput=62.745     avg_throughput=64.699    
[ 4.09] get   2: total_cnt=262        throughput=68.898     avg_throughput=64.043    
<<< BEGIN
scan: 491.01078705553334
get: 516.7798641630044
>>> END
```

factored out blocking writing opt outside the lock
```
[info] total_page=6400, duration_ms=5000, latency=1, lru_k_size=16, bpm_size=64, scan_thread_cnt=8, get_thread_cnt=8
[info] benchmark start
[ 1.00] scan  5: total_cnt=62         throughput=61.815     avg_throughput=61.815    
[ 1.00] scan  4: total_cnt=73         throughput=72.637     avg_throughput=72.637    
[ 1.00] get   1: total_cnt=68         throughput=67.797     avg_throughput=67.797    
[ 1.01] scan  6: total_cnt=67         throughput=66.337     avg_throughput=66.337    
[ 1.00] get   2: total_cnt=84         throughput=83.749     avg_throughput=83.749    
[ 1.01] scan  2: total_cnt=70         throughput=69.170     avg_throughput=69.170    
[ 1.01] get   4: total_cnt=71         throughput=70.227     avg_throughput=70.227    
[ 1.01] get   7: total_cnt=70         throughput=69.376     avg_throughput=69.376    
[ 1.00] get   0: total_cnt=69         throughput=68.794     avg_throughput=68.794    
[ 1.01] get   5: total_cnt=66         throughput=65.153     avg_throughput=65.153    
[ 1.01] get   6: total_cnt=73         throughput=71.992     avg_throughput=71.992    
[ 1.00] scan  0: total_cnt=73         throughput=72.637     avg_throughput=72.637    
[ 1.00] get   3: total_cnt=61         throughput=60.757     avg_throughput=60.757    
[ 1.02] scan  3: total_cnt=53         throughput=52.012     avg_throughput=52.012    
[ 1.02] scan  7: total_cnt=71         throughput=69.608     avg_throughput=69.608    
[ 1.01] scan  1: total_cnt=67         throughput=66.534     avg_throughput=66.534    
[ 2.00] get   0: total_cnt=132        throughput=62.937     avg_throughput=65.868    
[ 2.01] scan  5: total_cnt=117        throughput=54.672     avg_throughput=58.238    
[ 2.01] scan  0: total_cnt=134        throughput=60.697     avg_throughput=66.667    
[ 2.01] get   3: total_cnt=123        throughput=61.692     avg_throughput=61.224    
[ 2.01] scan  4: total_cnt=137        throughput=63.682     avg_throughput=68.159    
[ 2.02] get   4: total_cnt=140        throughput=68.725     avg_throughput=69.479    
[ 2.02] scan  1: total_cnt=133        throughput=65.411     avg_throughput=65.972    
[ 2.02] get   2: total_cnt=147        throughput=62.008     avg_throughput=72.808    
[ 2.02] scan  7: total_cnt=131        throughput=59.821     avg_throughput=64.755    
[ 2.02] scan  6: total_cnt=123        throughput=55.611     avg_throughput=60.982    
[ 2.02] get   1: total_cnt=134        throughput=64.579     avg_throughput=66.173    
[ 2.02] scan  2: total_cnt=137        throughput=66.337     avg_throughput=67.755    
[ 2.02] get   7: total_cnt=127        throughput=56.324     avg_throughput=62.840    
[ 2.02] get   6: total_cnt=137        throughput=63.304     avg_throughput=67.654    
[ 2.02] get   5: total_cnt=134        throughput=67.797     avg_throughput=66.468    
[ 2.03] scan  3: total_cnt=117        throughput=63.054     avg_throughput=57.522    
[ 3.00] get   0: total_cnt=239        throughput=106.893    avg_throughput=79.534    
[ 3.01] get   3: total_cnt=226        throughput=102.692    avg_throughput=75.033    
[ 3.01] scan  4: total_cnt=244        throughput=106.574    avg_throughput=80.956    
[ 3.02] scan  5: total_cnt=224        throughput=105.419    avg_throughput=74.074    
[ 3.03] scan  2: total_cnt=233        throughput=95.522     avg_throughput=76.974    
[ 3.03] get   2: total_cnt=245        throughput=97.126     avg_throughput=80.911    
[ 3.02] scan  1: total_cnt=231        throughput=97.319     avg_throughput=76.414    
[ 3.03] get   6: total_cnt=232        throughput=94.622     avg_throughput=76.593    
[ 3.02] get   4: total_cnt=247        throughput=106.151    avg_throughput=81.707    
[ 3.02] scan  6: total_cnt=220        throughput=96.326     avg_throughput=72.751    
[ 3.02] scan  0: total_cnt=234        throughput=98.912     avg_throughput=77.458    
[ 3.03] get   5: total_cnt=249        throughput=113.749    avg_throughput=82.260    
[ 3.03] get   7: total_cnt=231        throughput=103.483    avg_throughput=76.338    
[ 3.02] scan  7: total_cnt=226        throughput=94.905     avg_throughput=74.735    
[ 3.04] scan  3: total_cnt=223        throughput=104.950    avg_throughput=73.259    
[ 3.05] get   1: total_cnt=250        throughput=113.392    avg_throughput=82.021    
[ 4.01] get   0: total_cnt=376        throughput=136.863    avg_throughput=93.859    
[ 4.02] get   3: total_cnt=364        throughput=137.313    avg_throughput=90.615    
[ 4.02] scan  4: total_cnt=357        throughput=112.550    avg_throughput=88.850    
[ 4.02] get   4: total_cnt=384        throughput=136.863    avg_throughput=95.427    
[ 4.03] scan  7: total_cnt=345        throughput=118.762    avg_throughput=85.693    
[ 4.03] scan  1: total_cnt=355        throughput=123.260    avg_throughput=88.111    
[ 4.03] get   5: total_cnt=400        throughput=150.249    avg_throughput=99.206    
[ 4.05] scan  3: total_cnt=349        throughput=124.752    avg_throughput=86.088    
[ 4.04] scan  6: total_cnt=339        throughput=117.589    avg_throughput=83.994    
[ 4.04] scan  5: total_cnt=349        throughput=123.518    avg_throughput=86.472    
[ 4.05] get   6: total_cnt=365        throughput=129.756    avg_throughput=90.035    
[ 4.04] get   7: total_cnt=375        throughput=142.574    avg_throughput=92.914    
[ 4.04] scan  0: total_cnt=358        throughput=122.047    avg_throughput=88.680    
[ 4.04] scan  2: total_cnt=357        throughput=122.651    avg_throughput=88.410    
[ 4.05] get   2: total_cnt=384        throughput=135.875    avg_throughput=94.791    
[ 4.05] get   1: total_cnt=377        throughput=126.494    avg_throughput=93.040    
<<< BEGIN
scan: 751.3470365196567
get: 804.6298144083017
>>> END
```