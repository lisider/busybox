#########################################################################
# File Name: build.sh
# Author: Sues
# mail: sumory.kaka@foxmail.com
# Created Time: Sun 07 Oct 2018 06:47:17 PM PDT
# Version : 1.0
#########################################################################
#!/bin/bash

ARMGCC_PATH1=`which arm-linux-gcc`
ARMGCC_PATH=${ARMGCC_PATH1%/*}


if [ "$1" == "all"  ];then
    cp types_patch.h ${ARMGCC_PATH}/../arm-none-linux-gnueabi/libc/usr/include/linux/types.h
	export ARCH=arm CROSS_COMPILE=arm-linux- ; make -j8
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
[ -d ${ARMGCC_PATH}/../arm-none-linux-gnueabi/libc/lib ] && cp -p ${ARMGCC_PATH}/../arm-none-linux-gnueabi/libc/lib/* rootfs/lib

#[ -d lib-arm ] && cp -p lib-arm/* rootfs/lib -r
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
./mkyaffs2image-nand2g rootfs rootfs.yaffs2
echo  "需要将rootfs文件夹设置为 nfs 的目录"
