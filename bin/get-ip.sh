#!/bin/bash
ifconfig | grep inet | grep 192.* | awk '{print $2}'
