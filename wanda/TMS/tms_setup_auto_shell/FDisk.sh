#!/bin/bash
# version 1.0
# Update 2018-05-28
# Author niuyulong@hotmail.com

. include/main.sh

cur_dir=$(pwd)
#cd ${cur_dir}/src

if [ $(id -u) != "0" ]; then

    Echo_Red "Error: You must be root to run this script, please use root to continue"
    exit 1
fi

  DEVDISK=$1
  DEVDISKCOUNT=`echo $1 | awk '{print NF}'`

if [ $# -ge 3 ]; then
  case $3 in
    T)
      DISKSIZE=$2$3
    ;;
    G)
      DISKSIZE=$2$3
    ;;
    M)
      DISKSIZE=$2$3
    ;;
    *)
      Help_info
      exit 1
    ;;
  esac

  case $4 in
    '')
      STRIPES=$4
    ;;
    stripes)
      STRIPES=$4
    ;;
    *)
      Help_info
      exit 1
    ;;
  esac

  echo ""
  Echo_Yellow  "You will use \" ${DEVDISK} \" to create a ${DISKSIZE} disk partition."

  Press_Install
  #exit 1
  . include/yumrepo.sh
  . include/e2fsprogs.sh      
  . include/lmsdata.sh
else
   Help_info
   exit 1
fi

