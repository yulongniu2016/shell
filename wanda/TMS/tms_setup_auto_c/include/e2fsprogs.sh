#!/bin/bash
# version 1.2
# Update 2019-01-23
# Author niuyulong@hotmail.com

cur_dir=${1}
mkdir -p /tmp/tms
yum -y install gcc 

nameaam=`date "+%Y%m%d%H%M%S"`.tar.gz
wget -q http://10.199.89.56/wanda/src/e2fsprogs-1.43.4.tar.gz -P /tmp/tms
mv /tmp/tms/e2fsprogs-1.43.4.tar.gz /tmp/tms/${nameaam} 
#chmod 775 /tmp/tms/${nameaam}

cd /tmp/tms/
tar xzvf ${nameaam}
cd /tmp/tms/e2fsprogs-1.43.4
./configure
make && make install
cd ${cur_dir}
rm -f /etc/mke2fs.conf > /dev/null
#cp ${cur_dir}/conf/mke2fs.conf /etc
wget -q http://10.199.89.56/wanda/conf/mke2fs.conf -P /etc
rm -rf /tmp/tms

