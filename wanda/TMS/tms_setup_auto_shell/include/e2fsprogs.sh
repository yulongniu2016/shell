#!/bin/bash
# version 1.1
# Update 2018-05-28
# Author niuyulong@hotmail.com

yum -y install gcc 
cur_dir=$(pwd)

cd ${cur_dir}/src
tar xzvf e2fsprogs-1.43.4.tar.gz
cd ${cur_dir}/src/e2fsprogs-1.43.4
./configure
make && make install
cd ${cur_dir}
rm -f /etc/mke2fs.conf > /dev/null
cp ${cur_dir}/conf/mke2fs.conf /etc
rm -rf ${cur_dir}/src/e2fsprogs-1.43.4

