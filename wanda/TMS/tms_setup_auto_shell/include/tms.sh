#!/bin/bash
# version 1.1
# Update 2017-06-30
# Author niuyulong@hotmail.com

#$cur_dir=$(pwd)
yum localinstall ${cur_dir}/src/aam-screenwriter-wanda-2.4.1.1-1410_1.el6.noarch.rpm
cd /aam-lms/bin/pgsql/
./scwr-pgsql-db-setup.sh --access local
rm -rf /etc/yum.repos.d/pgdg-93-centos.repo
service screenwriter start
cd ${cur_dir}

