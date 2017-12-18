#!/bin/bash
docker run -v /Users/michael/tools/data/:/etc/spark/apps --name spark-master -p 8080:8080 -p 7077:7077 -p 6066:6066 -t reynoldsm88/spark-master
