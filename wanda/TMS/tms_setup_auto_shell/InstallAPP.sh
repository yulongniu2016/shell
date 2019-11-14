#!/bin/bash
# version 1.2
# Update 2018-05-29
# Author niuyulong@hotmail.com

. include/main.sh

cur_dir=$(pwd)

if [ $(id -u) != "0" ]; then
    echo "Error: You must be root to run this script, please use root to install TMS"
    exit 1
fi

Logo_display
Press_Install

  . include/yumrepo.sh
  . include/init.sh      
  . include/tms.sh 
  . include/advertisementPaiBo.sh
  . include/vsftp.sh
  . include/qms.sh
  . include/zabbixagent.sh
  . include/vncserver.sh
  include/appversionchk

