# zookeeper_experiments



## Experiments

### Throughput
In practice, only YCSB is leveraged for this experiment.

### Latency
With the help of zk-smoke and YCSB, we carry out this experiment.


#### How to run

- 1st sub-experiment: a cluster with size of 3 and test on single worker, where the number of znodes to be created and the size of create request are 10000 and 1024-byte, respectively.
  > PYTHONPATH=lib.linux-x86_64-2.6 LD_LIBRARY_PATH=lib.linux-x86_64-2.6 ./zk-latencies.py --cluster "node119:2181,node120:2181"  --znode_size=1024 --znode_count=10000 --wtest
- 2nd sub-experiment: a cluster with size of 3 and test on sync methods (permanent), where the number of znodes to be created and the size of create request are 10000 and 1024-byte, respectively.
  > PYTHONPATH=lib.linux-x86_64-2.6 LD_LIBRARY_PATH=lib.linux-x86_64-2.6 ./zk-latencies.py --cluster "node119:2181,node120:2181"  --znode_size=1024 --znode_count=10000 --synchronous
- 3rd sub-experiment: a cluster with size of 3 and 10 clients, where workload_mclients is covered in the YCSB.zip.
  > ./bin/ycsb run zookeeper -threads 10 -P workloads/workload_mclients -p zookeeper.connectString="node112:2181,node113:2181,node114:2181"




