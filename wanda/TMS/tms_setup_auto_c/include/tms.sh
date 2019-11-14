#!/bin/bash
# version 2.0
# Update 2019-02-12
# Author niuyulong@hotmail.com

cur_dir=`echo ${1} |awk '{print $1}'`
clocation=`echo ${1} |awk '{print $2}'`
cpath=`echo ${1} |awk '{print $3}'`
cname=`echo ${1} |awk '{print $4}'`
logon=`echo ${1} |awk '{print $5}'`
if [ ${logon} == "y" ];then
  echo ${cur_dir} | tee -a /var/log/tmsinstall.log
  echo ${clocation} | tee -a /var/log/tmsinstall.log
  echo ${cpath} | tee -a /var/log/tmsinstall.log
  echo  ${cname} | tee -a /var/log/tmsinstall.log
  echo ${cur_dir} ${clocation} ${cpath} ${cname}  | tee -a /var/log/tmsinstall.log
fi
nameaam=`date "+%Y%m%d%H%M%S"`.rpm

if [ ${clocation} = "1" ]
then
  cp ${cur_dir}/src/${cname} /tmp/tms/${nameaam}
elif [ ${clocation} = "2" ]
then
  wget -c -q ${cpath}${cname} -P /tmp/tms
  mv /tmp/tms/${cname} /tmp/tms/${nameaam}
else
  printf "tms error\n"
  exit 1
fi

#chmod 775 /tmp/tms/${nameaam}
yum -q -y install /tmp/tms/${nameaam}
cd /aam-lms/bin/pgsql/
./scwr-pgsql-db-setup.sh --access local
rm -rf /etc/yum.repos.d/pgdg-93-centos.repo
service screenwriter start
cd ${cur_dir}
