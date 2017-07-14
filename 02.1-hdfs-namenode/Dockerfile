FROM ylzone/hadoop-base 

COPY conf/* /opt/hadoop/etc/hadoop/

RUN mkdir -pv /data/hadoop/hdfs/namenode

RUN /opt/hadoop/bin/hdfs namenode -format

VOLUME /data

CMD ["/opt/hadoop/bin/hdfs", "namenode"]
