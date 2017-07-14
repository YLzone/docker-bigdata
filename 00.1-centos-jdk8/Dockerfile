FROM centos:latest

ADD http://127.0.0.1:8000/jdk/jdk-8u60-linux-x64.gz /usr/java/

RUN cd /usr/java && \
    tar xf jdk-8u60-linux-x64.gz && \
    rm -f jdk-8u60-linux-x64.gz

RUN ln -sv /usr/java/jdk1.8.0_60 /usr/java/latest && \
    ln -sv /usr/java/latest /usr/java/default && \
    chown -R root:root /usr/java/jdk1.8.0_60

RUN echo 'export PATH=$PATH:/usr/java/default/bin' > /etc/profile.d/java.sh

ENV JAVA_HOME /usr/java/default

RUN yum install -y which

CMD ["/bin/bash"]
