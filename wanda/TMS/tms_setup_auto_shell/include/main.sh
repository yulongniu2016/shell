#!/bin/bash
# version 1.2
# Update 2018-05-28
# Author niuyulong@hotmail.com

Help_info()
{
   echo "Usage: $0 < disk > < disk size > < disk size unit > [stripes]"  
   echo "  disk:           Enter disks that you want to partitioning, exmple '/dev/sdb /dev/sdc' "
   echo "  disk size:      Any number, exmple 14, 18, 17.6 ..."
   echo "  unit:           You can choice disk size unit M, G, T "
   echo "  stripes:        Support logical volume striping "
   echo "For exmple: "
   echo "    ./FDisk.sh '/dev/sdb' 14 T"
   echo "    ./FDisk.sh '/dev/sdb /dev/sdc' 17.6 T"
   echo "    ./FDisk.sh '/dev/sdb /dev/sdc /dev/sdd' 18 T stripes"
   exit 1
}

Press_Install()
{
    echo ""
    echo "Press any key to install...or Press Ctrl+c to cancel"
    OLDCONFIG=`stty -g`
    stty -icanon -echo min 1 time 0
    dd count=1 2>/dev/null
    stty ${OLDCONFIG}
    #. include/version.sh
}


Color_Text()
{
  echo -e " \e[0;$2m$1\e[0m"
}

Echo_Red()
{
  echo $(Color_Text "$1" "31")
}

Echo_Green()
{
  echo $(Color_Text "$1" "32")
}

Echo_Yellow()
{
  echo $(Color_Text "$1" "33")
}

Echo_Blue()
{
  echo $(Color_Text "$1" "34")
}

Logo_display()
{

clear
echo ""
echo ""
echo ""
echo ""

echo "##############      ###        ###      ############## "  
echo "      ##            ####      ####      ##             "  
echo "      ##            ## ##    ## ##      ##             "  
echo "      ##            ##  ##  ##  ##      ##             "  
echo "      ##            ##   ####   ##      ############## "  
echo "      ##            ##    ##    ##                  ## "  
echo "      ##            ##          ##                  ## "  
echo "      ##            ##          ##                  ## "  
echo "      ##            ##          ##      ##############  Version 2.0"  

echo ""
echo ""
echo ""
echo ""

}
