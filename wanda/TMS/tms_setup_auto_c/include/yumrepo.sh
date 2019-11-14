#!/bin/bash
# version 2.2
# Update 2019-01-21
# Author niuyulong@hotmail.com

rm -rf /etc/yum.repos.d/* > /dev/null
rm -f /etc/yum.conf > /dev/null

wget -q http://10.199.89.56/wanda/yum/wanda-internal.repo -P /etc/yum.repos.d/
wget -q http://10.199.89.56/wanda/yum/yum.conf -P /etc/
wget -q http://10.199.89.56/wanda/yum/zabbix.repo -P /etc/yum.repos.d/

yum clean all
yum makecache
yum -y install screen lrzsz
