#!/bin/bash
# version 3.0
# Update 2019-02-11
# Author niuyulong@hotmail.com

echo > /var/log/tmsinstall.log
echo "######################################" | tee -a /var/log/tmsinstall.log
echo "#              TMS Install           #" | tee -a /var/log/tmsinstall.log
echo "######################################" | tee -a /var/log/tmsinstall.log
if [ $# == 0 ];then
  logon="n"
else
  logon=${1}
fi
chkhost='10.199.89.1'
dbhost='10.199.89.56'
dbpw='zabbixDB2016'

. include/main.sh.x

mkdir -p /tmp/tms

cur_dir=$(pwd)

if [ $(id -u) != "0" ]; then
    echo "Error: You must be root to run this script, please use root to install TMS."
    exit 1
fi

if ! ping -c 1 ${chkhost} > /dev/null ;then
   echo "Network error: please check your network."
   exit 1
fi

if ! ping -c 1 ${dbhost} > /dev/null ;then
   echo "Service error: please contact your system administrator."
   exit 1
fi

Get_config()
{
  #config=`/usr/bin/mysql -h${dbhost} -uroot -p${dbpw} --default-character-set=utf8 -e "select * from wandanoc.config where softName='aam-screenwriter'"`
  config=`/usr/bin/mysql -h${dbhost} -uroot -p${dbpw} --default-character-set=utf8 -e "select * from wandanoc.config"`

  cname=`echo ${config} | awk '{print $11}'`
  cstatus=`echo ${config} | awk '{print $12}'`
  csize=`echo ${config} | awk '{print $13}'`
  clocation=`echo ${config} | awk '{print $14}'`
  cpath=`echo ${config} | awk '{print $15}'`
  if [ -e ${cur_dir}/src/${cname} ]; then
    clsize=`ls -l ${cur_dir}/src/${cname} | awk '{print $5}'`
  else
    clsize=0
  fi

  qname=`echo ${config} | awk '{print $18}'`
  qstatus=`echo ${config} | awk '{print $19}'`
  qsize=`echo ${config} | awk '{print $20}'`
  qlocation=`echo ${config} | awk '{print $21}'`
  qpath=`echo ${config} | awk '{print $22}'`
  if [ -e ${cur_dir}/src/${qname} ]; then
    qlsize=`ls -l ${cur_dir}/src/${qname} | awk '{print $5}'`
  else
    qlsize=0
  fi

  if [ ${logon} == "y" ];then
    echo "tms:"
    echo ${config} | awk '{print $9,$10,$11,$12,$13,$14,$15}' | tee -a /var/log/tmsinstall.log         
    echo ${csize} | tee -a /var/log/tmsinstall.log
    echo ${clsize} | tee -a /var/log/tmsinstall.log
    echo ${clocation} | tee -a /var/log/tmsinstall.log
    echo ${cpath} | tee -a /var/log/tmsinstall.log
    echo ${clsize} | tee -a /var/log/tmsinstall.log
    echo "qms:"
    echo ${config} | awk '{print $16,$17,$18,$19,$20,$21,$22}' | tee -a /var/log/tmsinstall.log
    echo ${qsize} | tee -a /var/log/tmsinstall.log
    echo ${qlsize} | tee -a /var/log/tmsinstall.log
    echo ${qlocation} | tee -a /var/log/tmsinstall.log
    echo ${qpath} | tee -a /var/log/tmsinstall.log
    echo ${qlsize} | tee -a /var/log/tmsinstall.log
   
  fi

  if [ ${cname}1 = ""1 ]; then
    echo "DB error: please contact your system administrator."
    exit 1
  fi
  if [[ ${clocation} = "1" && ${csize} != ${clsize} ]] ; then
    echo "TMS package error: please contact your system administrator."
    exit 1
  fi
  if [[ ${qlocation} = "1"  &&  ${qsize} != ${qlsize} ]] ; then
    echo "QMS package error: please contact your system administrator."
    exit 1
  fi
}

Logo_display
Press_Install
  
  include/yumrepo.sh.x | tee -a /var/log/tmsinstall.log
  include/init.sh.x | tee -a /var/log/tmsinstall.log     
  if [ -e /usr/bin/mysql ];then
    Get_config
  else
    echo "SYS DB error: please contact your system administrator."
    exit 1
  fi
  include/tms.sh.x "${cur_dir} ${clocation} ${cpath} ${cname} ${logon}" | tee -a /var/log/tmsinstall.log
  if [ ${logon} == "y" ];then echo "programe status: $?";fi
  #include/advertisementPaiBo.sh.x "${cur_dir}"
  include/vsftp.sh.x "${cur_dir}" | tee -a /var/log/tmsinstall.log
  include/qms.sh.x "${cur_dir} ${qlocation} ${qpath} ${qname} ${logon}" | tee -a /var/log/tmsinstall.log
  include/zabbixagent.sh.x "${cur_dir}" | tee -a /var/log/tmsinstall.log
  include/vncserver.sh.x "${cur_dir}" 
  include/appversionchk | tee -a /var/log/tmsinstall.log
  rm -rf /tmp/tms

