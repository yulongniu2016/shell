#!/bin/bash
# version 1.1
# Update 2019-01-21
# Author niuyulong@hotmail.com

DBName="wandanoc.tms_hosts"
HostName=`hostname`
HostIP=`ifconfig | grep 'inet addr:10.' | awk '{print substr($2,6)}'`
#AppVersion=`/bin/grep 'serial' /usr/local/tomcat-7.0.70/webapps/tmsterm/version.properties | awk -F= '{print $2}'`
TmsVersion=`rpm -qa|grep 'aam-screenwriter'`'.rpm'
#HostIP='10.118.8.6'
#echo ${AppVersion}
#echo ${HostIP}

HostCheck=`/usr/bin/mysql -h10.199.89.56 -uroot -p$1 --default-character-set=utf8 -e "select count(tmsIP) from ${DBName} where tmsIP='${HostIP}'"`
echo $HostCheck
HostCheckFilter=`echo ${HostCheck} | awk '{print $2}'`
if [ ${HostCheckFilter} -lt 1 ]; then
    #echo ${HostCheckFilter}
    /usr/bin/mysql -h10.199.89.56 -uroot -p$1 --default-character-set=utf8 -e "insert into ${DBName} (cinemaName,tmsIP,status,operator,VersionTms,UpdateTimeTms) values ('${HostName}','${HostIP}','1','manual','${TmsVersion}',now())"
else
    /usr/bin/mysql -h10.199.89.56 -uroot -p$1 --default-character-set=utf8 -e "update ${DBName} set status='1',operator='manual',VersionTms='${TmsVersion}',UpdateTimeTms=now() where tmsIP='${HostIP}'"
fi
