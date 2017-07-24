FROM ylzone/centos-jdk8

ADD http://127.0.0.1:8000/zookeeper/zookeeper-3.4.9.tar.gz /opt/

RUN cd /opt \
    && tar xf zookeeper-3.4.9.tar.gz \
    && rm -f zookeeper-3.4.9.tar.gz \
    && ln -sv zookeeper-3.4.9 zookeeper \
    && rm -f /opt/zookeeper/zookeeper-3.4.9.jar.{asc,md5,sha1} \
    && rm -f /opt/zookeeper/bin/{README.txt,*.cmd} \
    && rm -rf /opt/zookeeper/lib/{*.txt,cobertura,jdiff} \
    && rm -rf /opt/zookeeper/{recipes,src,docs,contrib,dist-maven,*.txt,*.xml} \
    && mv /opt/zookeeper/conf /opt/zookeeper/conf.orig \
    \
    && mkdir -pv /data/zookeeper/{conf,data,logs}

COPY conf/* /data/zookeeper/conf/
COPY entrypoint.sh /opt/

ENV ZOOCFGDIR=data/zookeeper/conf
ENV ZOO_LOG_DIR=/data/zookeeper/logs

VOLUME /data

#CMD ["/opt/zookeeper/bin/zkServer.sh start"]
CMD ["/opt/entrypoint.sh"]
