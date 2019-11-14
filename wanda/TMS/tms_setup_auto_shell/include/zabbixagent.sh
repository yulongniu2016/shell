#!/bin/bash

#cur_dir=$(pwd)
# install zabbix-agent
IP=`ifconfig|grep 'inet addr:'|head -1|awk -F: '{print $2}'|awk '{print $1}'`
rpm -ivh ${cur_dir}/src/zabbix-2.4.8-1.el6.x86_64.rpm 
rpm -ivh ${cur_dir}/src/zabbix-agent-2.4.8-1.el6.x86_64.rpm  
sed -i 's/^Server=127.0.0.1/Server=10.199.89.64/g' /etc/zabbix/zabbix_agentd.conf 
sed -i 's/^ServerActive=127.0.0.1/ServerActive=10.199.89.64/g' /etc/zabbix/zabbix_agentd.conf 
sed -i "s/^Hostname=Zabbix server/Hostname=TMS-$IP/g" /etc/zabbix/zabbix_agentd.conf
sed -i "s/^# ListenIP=0.0.0.0/ListenIP=$IP/g" /etc/zabbix/zabbix_agentd.conf


chkconfig zabbix-agent on
#service zabbix-agent restart

# install tmschecking
cp ${cur_dir}/src/tmschecking.py /usr/local/bin/
chmod 755 /usr/local/bin/tmschecking.py


#set zabbix
echo 'UserParameter=tms_poscheck,/usr/local/bin/tmschecking.py' >> /etc/zabbix/zabbix_agentd.conf
service zabbix-agent restart

