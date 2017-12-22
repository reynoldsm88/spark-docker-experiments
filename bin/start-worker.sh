#!/bin/bash

docker run -v /home/michael/tools/data:/etc/spark/apps --name spark-worker -p 8081:8081 -p 7078:7078 -t reynoldsm88/spark-worker
