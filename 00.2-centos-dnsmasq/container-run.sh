#!/bin/bash

docker run -d -v /data -p 53:53/tcp -p 53:53/udp --cap-add=NET_ADMIN --name="centos-dnsmasq" ylzone/centos-dnsmasq
