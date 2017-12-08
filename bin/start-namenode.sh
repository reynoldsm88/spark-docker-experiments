#!/bin/bash
docker run --name hdfs-namenode -p 50070:50070  -p 9000:9000 -t --net=bridge reynoldsm88/hdfs-namenode
