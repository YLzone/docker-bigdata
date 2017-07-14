#!/bin/bash

echo "=========== build ylzone/centos-jdk8==================\n"
docker build -t "ylzone/centos-jdk8"   ./00.1-centos-jdk8

echo "=========== build ylzone/hadoop-base==================\n"
docker build -t "ylzone/hadoop-base"   ./01.1-hadoop-base

echo "=========== build ylzone/hdfs-namenode================\n"
docker build -t "ylzone/hdfs-namenode" ./02.1-hdfs-namenode

echo "=========== build ylzone/hdfs-namenode================"
docker build -t "ylzone/hdfs-datanode" ./02.2-hdfs-datanode
