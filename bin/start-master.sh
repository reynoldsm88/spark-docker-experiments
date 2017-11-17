#!/bin/bash
docker run --name spark-master -p 8080:8080 -p 7077:7077 -p 6066:6066 -t --net=bridge reynoldsm88/spark-master
