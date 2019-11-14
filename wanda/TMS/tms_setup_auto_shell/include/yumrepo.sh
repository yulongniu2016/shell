#!/bin/bash
# version 1.2
# Update 2018-04-12
# Author niuyulong@hotmail.com

rm -rf /etc/yum.repos.d/* > /dev/null
rm -f /etc/yum.conf > /dev/null

wget http://10.199.88.248/noc/yumset/wanda-internal.repo -P /etc/yum.repos.d/
wget http://10.199.88.248/noc/yumset/yum.conf -P /etc/
wget http://10.199.88.248/noc/yumset/zabbix.repo -P /etc/yum.repos.d/

yum clean all
yum makecache

