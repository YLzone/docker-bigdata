FROM centos:latest

RUN yum install -y dnsmasq

RUN mkdir -pv /data/dnsmasq/{conf,data,logs,run}

COPY dnsmasq.conf /data/dnsmasq/conf
COPY dnsmasq.hosts.conf /data/dnsmasq/data
COPY dnsmasq.resolv.conf /data/dnsmasq/data

CMD ["/usr/sbin/dnsmasq", "--conf-file=/data/dnsmasq/conf/dnsmasq.conf", "-k"]
