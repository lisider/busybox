#########################################################################
# File Name: build.sh
# Author: Sues
# mail: sumory.kaka@foxmail.com
# Created Time: Sun 07 Oct 2018 06:47:17 PM PDT
# Version : 1.0
#########################################################################
#!/bin/bash
if [ "$1" == "all"  ];then
	make -j8
	make install
fi
rm rootfs -rf
mkdir rootfs
mkdir rootfs/lib
cp -r _install/* rootfs
cp -p /usr/arm-linux-gnueabi/lib/* rootfs/lib
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
echo  "需要将rootfs文件夹设置为 nfs 的目录"
