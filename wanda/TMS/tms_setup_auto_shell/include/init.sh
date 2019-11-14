#!/bin/bash
# version 1.3
# Update 2018-06-04
# Author niuyulong@hotmail.com
# Description Set yum repository configuration file, depends on current system info.

#cur_dir=$(pwd)
yum -y install net-snmp-utils tigervnc-server mysql-server MySQL-python

#set iptables
service iptables stop
chkconfig iptables off


#set selinux
setenforce 0
sed -i 's#SELINUX=enforcing#SELINUX=disabled#' /etc/selinux/config

#set ntpd
service ntpd stop

wget http://10.199.88.248/noc/ntp/ntp.conf.tms -O /etc/ntp.conf

IP_INTERNET=`ifconfig | grep 'inet addr:10' | sed 's/\:/./g' | awk -F. '{print $2"."$3"."$4".0"}'`
#echo ${IP_INTERNET}
IP_INTRANET=`ifconfig | grep 'inet addr:10' | sed 's/\:/./g' | awk -F. '{print "192."168"."$4".0"}'`
#echo ${IP_INTRANET}

sed -i "s/IP_INTERNET/${IP_INTERNET}/g" /etc/ntp.conf 
sed -i "s/IP_INTRANET/${IP_INTRANET}/g" /etc/ntp.conf 

chkconfig ntpd on
service ntpd start
ntpdate -u 10.0.5.55

#create user if not exists  
USER=wandanoc
VAR=nouser
#echo ${USER}
VAR=`grep "^${USER}" /etc/passwd | awk -F: '{print $1}'`  
if [[ ${VAR} != ${USER} ]]  
then  
   useradd ${USER}  
   echo ${USER}:'$1$12345678$MTtt/L4mN6LuH669c7yzJ0' |chpasswd -e
   echo "${USER}        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
fi

