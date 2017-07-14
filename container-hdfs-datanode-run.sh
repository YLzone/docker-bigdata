#!/bin/bash

docker run -d \
           --name "bigdata_dev01_hdfs-datanode_02" \
           --hostname "VM03" \
           --dns "172.17.0.1" \
           ylzone/hdfs-datanode \
