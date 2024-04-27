#!/bin/bash
IFNAME_=`ip a | grep enx | cut -d " " -f 2`
IFNAME=${IFNAME_::-1}
sudo ip addr add 172.32.0.1/24 dev $IFNAME
