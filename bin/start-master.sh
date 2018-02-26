#!/bin/bash
docker run \
	-v /home/michael/demo/docker-experiments/apps:/etc/spark/apps \
        -v /home/michael/demo/docker-experiments/data:/etc/spark/data \
	--name spark-master \
	-p 8080:8080 -p 7077:7077 -p 6066:6066 \
	-t reynoldsm88/spark-master
