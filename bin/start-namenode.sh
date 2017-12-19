#!/bin/bash
docker run -h hdfs.namenode --name hdfs-namenode -p 50070:50070 -p 9000:9000 -t reynoldsm88/hdfs-namenode
