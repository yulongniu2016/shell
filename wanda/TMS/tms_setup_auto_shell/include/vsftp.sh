#!/bin/bash
# version 1.1
# Update 2017-07-29
# Author niuyulong@hotmail.com

#cur_dir=$(pwd)
rpm -ivh ${cur_dir}/src/vsftpd-2.2.2-21.el6.x86_64.rpm 
useradd adftp -d /lms-data/ADSource
echo adftp:wandatms | chpasswd
cp /etc/vsftpd/vsftpd.conf /etc/vsftpd/vsftpd.conf.bak
sed -i 's/^anonymous_enable=YES/anonymous_enable=NO/' /etc/vsftpd/vsftpd.conf
sed -i 's/^#chroot_local_user=YES/chroot_local_user=NO/' /etc/vsftpd/vsftpd.conf
sed -i 's/^#chroot_list_enable=YES/chroot_list_enable=YES/' /etc/vsftpd/vsftpd.conf
echo chroot_list_file=/etc/vsftpd/chroot_list >>/etc/vsftpd/vsftpd.conf
sed -i 's/^#idle_session_timeout=600/idle_session_timeout=3600/' /etc/vsftpd/vsftpd.conf
sed -i 's/^#data_connection_timeout=120/data_connection_timeout=3600/' /etc/vsftpd/vsftpd.conf
echo listen_port=6000 >>/etc/vsftpd/vsftpd.conf
echo adftp >>/etc/vsftpd/chroot_list
cp /etc/services /etc/services.bak
sed -i 's/^ftp             21/ftp             6000/' /etc/services

service vsftpd restart
echo ##################################
echo #   vsftpd install successfully  #
echo ##################################

