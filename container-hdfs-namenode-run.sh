#!/bin/bash

docker run -d \
           -p 50070:50070 \
           --name "bigdata_dev01_hdfs-namenode_01" \
           --hostname "VM01" \
           --dns "172.17.0.1" \
           ylzone/hdfs-namenode \
