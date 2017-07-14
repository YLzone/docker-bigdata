FROM ylzone/centos-jdk8


ADD http://127.0.0.1:8000/hadoop/hadoop-2.7.3.tar.gz /opt/

RUN cd /opt && \
    tar xf hadoop-2.7.3.tar.gz && \
    ln -sv hadoop-2.7.3 hadoop && \
    rm -rf /opt/hadoop/share/doc && \
    rm hadoop-2.7.3.tar.gz

RUN mv /opt/hadoop/etc/hadoop /opt/hadoop/etc/hadoop.orig && \
    mkdir -p /opt/hadoop/etc/hadoop

RUN mkdir -pv /data/hadoop
