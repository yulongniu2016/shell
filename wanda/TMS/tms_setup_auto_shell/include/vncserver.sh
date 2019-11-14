#!/bin/bash
# version 1.1
# Update 2017-07-29
# Author niuyulong@hotmail.com

#set VNCSERVERS
Echo_Yellow "please set VNC Server password:"
vncserver
echo 'VNCSERVERS="1:root"' >> /etc/sysconfig/vncservers 
chkconfig vncserver on
#service vncserver restart


