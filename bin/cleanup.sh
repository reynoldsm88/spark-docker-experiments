#!/bin/bash

docker ps -a | grep $1 | awk '{print $1}' | grep \[0-9\]* | xargs docker rm -f

