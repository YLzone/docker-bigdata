FROM ylzone/hadoop-base 

COPY conf/* /opt/hadoop/etc/hadoop/

RUN mkdir -pv /data/hadoop/hdfs/datanode

VOLUME /data

CMD ["/opt/hadoop/bin/hdfs", "datanode"]
