#!/bin/bash
docker run -h hdfs.datanode --name hdfs-datanode -p 50075:50075  -p 50010:50010 -p 50020:50020 -t reynoldsm88/hdfs-datanode
