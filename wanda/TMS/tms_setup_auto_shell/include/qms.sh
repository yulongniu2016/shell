#!/bin/bash

# install qms
cur_dir=$(pwd)
rpm -ivh ${cur_dir}/src/cqs-0.0.7-1.x86_64.rpm

## set
sed -i 's/127.0.0.1/10.199.88.151/g' /opt/cqs/cqs.json
#sed -i 's/80/8080/g' /opt/cqs/cqs.json

## start
echo "initctl start cqs" >> /etc/rc.d/rc.local
initctl start cqs
