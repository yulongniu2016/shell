#!/bin/bash
# version 1.0
# Update 2018-05-29
# Author niuyulong@hotmail.com

DBName="wandanoc.tms_hosts"
HostName=`hostname`
HostIP=`ifconfig | grep 'inet addr:10.' | awk '{print substr($2,6)}'`
AppVersion=`/bin/grep 'serial' /usr/local/tomcat-7.0.70/webapps/tmsterm/version.properties | awk -F= '{print $2}'`
TmsVersion=`rpm -qa|grep 'aam-screenwriter'`'.rpm'
#HostIP='10.118.8.6'
#echo ${AppVersion}
#echo ${HostIP}

HostCheck=`/usr/bin/mysql -h10.199.89.212 -uroot -p$1 --default-character-set=utf8 -e "select count(tmsIP) from ${DBName} where tmsIP='${HostIP}'"`
echo $HostCheck
HostCheckFilter=`echo ${HostCheck} | awk '{print $2}'`
if [ ${HostCheckFilter} -lt 1 ]; then
    #echo ${HostCheckFilter}
    /usr/bin/mysql -h10.199.89.212 -uroot -p$1 --default-character-set=utf8 -e "insert into ${DBName} (cinemaName,tmsIP,status,VersionPaiBoTms,UpdateTimePaiBoTms,operator,VersionTms,UpdateTimeTms) values ('${HostName}','${HostIP}','1','${AppVersion}',now(),'manual','${TmsVersion}',now())"
else
    /usr/bin/mysql -h10.199.89.212 -uroot -p$1 --default-character-set=utf8 -e "update ${DBName} set status='1',VersionPaiBoTms='${AppVersion}',UpdateTimePaiBoTms=now(),operator='manual',VersionTms='${TmsVersion}',UpdateTimeTms=now() where tmsIP='${HostIP}'"
fi
