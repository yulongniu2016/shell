#!/bin/bash
# version 1.3
# Update 2018-05-28
# Author niuyulong@hotmail.com

pvcreate ${DEVDISK} 
vgcreate tms_vg ${DEVDISK}

if [ ${STRIPES} == 'stripes'  ] && [ ${DEVDISKCOUNT} -gt 1 ]; then
  lvcreate -i ${DEVDISKCOUNT} -I 512 -L ${DISKSIZE} -n tms_lv tms_vg
else 
  lvcreate -L ${DISKSIZE}  -n tms_lv tms_vg
fi

mkfs.ext4 /dev/tms_vg/tms_lv 
#mkfs -t ext4 /dev/mapper/tms_vg-tms_lv

mkdir /lms-data > /dev/null
mount /dev/tms_vg/tms_lv /lms-data
echo '/dev/tms_vg/tms_lv  /lms-data                   ext4    defaults        0 0' >> /etc/fstab


