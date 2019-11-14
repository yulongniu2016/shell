#!/bin/bash
help_h()
{
  echo "Usage: $0 [option]"
  echo " -c            put C code to the test hosts"
  echo " -s            put source code to the test host"
  echo " -h <IP>       put source code to the specified host"
}
Code_pkg()
{
  # Compile shell code of the tms_setup_auto_c to C code and tar pakage 
  tarname="tms_setup_auto_c_"`date "+%Y%m%d%H%M%S"`".tar.gz"
  for i in `ls tms_setup_auto_c/*.sh` ;do shc -v -r -T  -f $i; done
  for i in `ls tms_setup_auto_c/include/*.sh` ;do shc -v -r -T  -f $i; done
  tar czvf ${tarname} tms_setup_auto_c
}

host="192.168.99.140"

if [ $# == 0 ];then
  help_h
elif [ $1 == "-s" ];then
  # put source code to the test host
  Code_pkg
  scp ${tarname} root@${host}:/home/
elif [ $1 == "-c" ];then
  # put C code to the test host
  Code_pkg
  putname="tms_setup_auto-"`date "+%Y%m%d%H%M%S"`".tar.gz"
  rm -f tms_setup_auto-*
  rm -rf tms_setup_auto
  cp -a tms_setup_auto_c tms_setup_auto
  rm -f tms_setup_auto/*.sh tms_setup_auto/*.x.c tms_setup_auto/include/*.sh tms_setup_auto/include/*.x.c
  tar czvf ${putname} tms_setup_auto
  scp ${putname} root@${host}:/home/
elif [ $1 == "-h" ];then
  # put source code to the specified host
  Code_pkg
  host=${2}
  scp ${tarname} root@${host}:/home/
elif [ $1 == "--help" ];then
  help_h 
fi

