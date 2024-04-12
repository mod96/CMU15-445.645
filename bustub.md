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
