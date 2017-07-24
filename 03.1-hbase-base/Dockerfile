FROM ylzone/centos-jdk8

ADD http://127.0.0.1:8000/hbase/hbase-1.2.6-bin.tar.gz /opt

RUN cd /opt \
    && tar xf hbase-1.2.6-bin.tar.gz \
    && rm -f hbase-1.2.6-bin.tar.gz \
    && ln -sv hbase-1.2.6 hbase \
    && rm -f /opt/hbase/*.txt \
    && rm -rf /opt/hbase/LEGAL \
    && rm -rf /opt/hbase/docs \
    \
    && mv /opt/hbase/conf /opt/hbase/conf.orig \
    && mkdir -pv /data/hbase
