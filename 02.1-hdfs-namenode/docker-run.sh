#!/bin/bash

docker run -d \
           -p 50070:50070 \
           --hostname "VM01" \
           --add-host "VM02:172.17.0.4" \
           --name "hdfs-namenode" \
           ylzone/hdfs-namenode \
           #/bin/bash
           #su -s /bin/bash root -c '/opt/hadoop/sbin/hadoop-daemon.sh --config /opt/hadoop/etc/hadoop start namenode'
