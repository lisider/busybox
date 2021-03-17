#########################################################################
# File Name: flash.sh
# Author: Sues
# mail: sumory.kaka@foxmail.com
# Created Time: Fri 12 Mar 2021 09:53:31 AM CST
# Version : 1.0
#########################################################################
#!/bin/bash
[ ! -f ./rootfs.tar.gz ] && echo "./rootfs.tar.gz not exist" && exit -2
[ ! -e /dev/sdb2 ] && echo "/dev/sdb2 not exist" && exit -2
sudo mount /dev/sdb2 /mnt
sudo rm /mnt/* -rf
sudo tar xvf ./rootfs.tar.gz  -C /mnt
sudo umount /mnt
