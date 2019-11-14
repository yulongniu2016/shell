#!/bin/bash
# version 1.2
# Update 2018-05-28
# Author niuyulong@hotmail.com

tar -xzvf ${cur_dir}/src/apache-tomcat-7.0.70.tar.gz -C /usr/local/
mv /usr/local/apache-tomcat-7.0.70 /usr/local/tomcat-7.0.70
rm -rf /usr/local/tomcat-7.0.70/conf/server.xml > /dev/null
rm -rf /usr/local/tomcat-7.0.70/conf/context.xml > /dev/null
cp ${cur_dir}/conf/server.xml.j2 /usr/local/tomcat-7.0.70/conf/server.xml
wget -c -P /usr/local/tomcat-7.0.70/conf/ http://10.199.88.248/noc/advertisementPaiBo/104_广告自动排播/TMS终端/01-全量/context.xml
echo "nohup /usr/local/tomcat-7.0.70/bin/startup.sh &" >> /etc/rc.local
#get tmsterm.war
wget -c -P /usr/local/tomcat-7.0.70/webapps/ http://10.199.88.248/noc/advertisementPaiBo/104_广告自动排播/TMS终端/01-全量/tmsterm.war
/usr/local/tomcat-7.0.70/bin/startup.sh 
