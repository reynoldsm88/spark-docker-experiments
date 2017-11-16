#!/bin/bash

docker run --name spark-worker -i -p 8081:8081 -p 7078:7078 -t --net=bridge reynoldsm88/spark-worker
