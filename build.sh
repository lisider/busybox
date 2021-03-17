#########################################################################
# File Name: build.sh
# Author: Sues
# mail: sumory.kaka@foxmail.com
# Created Time: Sun 07 Oct 2018 06:47:17 PM PDT
# Version : 1.0
#########################################################################
#!/bin/bash

ARMGCC_PATH1=`which arm-none-linux-gnueabi-gcc`
ARMGCC_PATH=${ARMGCC_PATH1%/*}


if [ "$1" == "all"  ];then
	export ARCH=arm CROSS_COMPILE=arm-none-linux-gnueabi- ; make -j8
	make install
fi
rm rootfs -rf
mkdir rootfs
mkdir rootfs/lib
if [ -d _install ];then
   cp -r _install/* rootfs
else
    echo _install not exist
    rm rootfs -rf
    return 0
fi

mkdir -p rootfs/dev/
cd rootfs/dev/
sudo mknod -m 666 tty1 c 4 1
sudo mknod -m 666 tty2 c 4 2
sudo mknod -m 666 tty3 c 4 3
sudo mknod -m 666 tty4 c 4 4
sudo mknod -m 666 console c 5 1
sudo mknod -m 666 null c 1 3
cd ../../
cp etc rootfs -r
cp work rootfs -r
cd rootfs
mkdir proc sys tmp var
cd ..
rm rootfs.tar.gz -f
cd rootfs
tar zcvf ../rootfs.tar.gz *
cd -
echo  "OUTPUT IS rootfs.tar.gz"
