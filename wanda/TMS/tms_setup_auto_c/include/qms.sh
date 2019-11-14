#!/bin/bash
# version 1.2
# Update 2018-05-29
# Author niuyulong@hotmail.com

cur_dir=`echo ${1} |awk '{print $1}'`
qlocation=`echo ${1} |awk '{print $2}'`
qpath=`echo ${1} |awk '{print $3}'`
qname=`echo ${1} |awk '{print $4}'`
logon=`echo ${1} |awk '{print $5}'`
if [ ${logon} == "y" ];then
  echo ${cur_dir} | tee -a /var/log/tmsinstall.log
  echo ${qlocation} | tee -a /var/log/tmsinstall.log
  echo ${qpath} | tee -a /var/log/tmsinstall.log
  echo  ${qname} | tee -a /var/log/tmsinstall.log
  echo ${cur_dir} ${qlocation} ${qpath} ${qname}  | tee -a /var/log/tmsinstall.log
fi

nameqms=`date "+%Y%m%d%H%M%S"`.rpm

if [ ${qlocation} = "1" ]
then
  cp ${cur_dir}/src/${qname} /tmp/tms/${nameqms}
elif [ ${qlocation} = "2" ]
then
  wget -c -q ${qpath}${qname} -P /tmp/tms
  mv /tmp/tms/${qname} /tmp/tms/${nameqms}
else
  printf "tms error\n"
  exit 1
fi

#chmod 775 /tmp/tms/${nameqms}
rpm -ivh /tmp/tms/${nameqms}

## set
sed -i 's/127.0.0.1/10.199.88.151/g' /opt/cqs/cqs.json
#sed -i 's/80/8080/g' /opt/cqs/cqs.json

## start
echo "initctl start cqs" >> /etc/rc.d/rc.local
initctl start cqs
