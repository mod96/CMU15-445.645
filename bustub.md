### Project 1 - Buffer Pool

before optimization
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