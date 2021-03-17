#########################################################################
# File Name: config.sh
# Author: Sues
# mail: sumory.kaka@foxmail.com
# Created Time: Sun 07 Oct 2018 06:46:10 PM PDT
# Version : 1.0
#########################################################################
#!/bin/bash
export ARCH=arm CROSS_COMPILE=arm-none-linux-gnueabi-;make ok6410a_defconfig

#$ arm-none-linux-gnueabi-gcc -v 
#Using built-in specs.
#COLLECT_GCC=arm-none-linux-gnueabi-gcc
#COLLECT_LTO_WRAPPER=/home/suws/ok6410/origin-offical/arm-2014.05/bin/../libexec/gcc/arm-none-linux-gnueabi/4.8.3/lto-wrapper
#Target: arm-none-linux-gnueabi
#Configured with: /scratch/maciej/arm-linux-2014.05-rel/src/gcc-4.8-2014.05/configure --build=i686-pc-linux-gnu --host=i686-pc-linux-gnu --target=arm-none-linux-gnueabi --enable-threads --disable-libmudflap --disable-libssp --disable-libstdcxx-pch --enable-extra-sgxxlite-multilibs --with-arch=armv5te --with-gnu-as --with-gnu-ld --with-specs='%{save-temps: -fverbose-asm} %{funwind-tables|fno-unwind-tables|mabi=*|ffreestanding|nostdlib:;:-funwind-tables} -D__CS_SOURCERYGXX_MAJ__=2014 -D__CS_SOURCERYGXX_MIN__=5 -D__CS_SOURCERYGXX_REV__=29' --enable-languages=c,c++ --enable-shared --enable-lto --enable-symvers=gnu --enable-__cxa_atexit --with-pkgversion='Sourcery CodeBench Lite 2014.05-29' --with-bugurl=https://sourcery.mentor.com/GNUToolchain/ --disable-nls --prefix=/opt/codesourcery --with-sysroot=/opt/codesourcery/arm-none-linux-gnueabi/libc --with-build-sysroot=/scratch/maciej/arm-linux-2014.05-rel/install/opt/codesourcery/arm-none-linux-gnueabi/libc --with-gmp=/scratch/maciej/arm-linux-2014.05-rel/obj/pkg-2014.05-29-arm-none-linux-gnueabi/arm-2014.05-29-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr --with-mpfr=/scratch/maciej/arm-linux-2014.05-rel/obj/pkg-2014.05-29-arm-none-linux-gnueabi/arm-2014.05-29-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr --with-mpc=/scratch/maciej/arm-linux-2014.05-rel/obj/pkg-2014.05-29-arm-none-linux-gnueabi/arm-2014.05-29-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr --with-isl=/scratch/maciej/arm-linux-2014.05-rel/obj/pkg-2014.05-29-arm-none-linux-gnueabi/arm-2014.05-29-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr --with-cloog=/scratch/maciej/arm-linux-2014.05-rel/obj/pkg-2014.05-29-arm-none-linux-gnueabi/arm-2014.05-29-arm-none-linux-gnueabi.extras/host-libs-i686-pc-linux-gnu/usr --disable-libgomp --disable-libitm --enable-libatomic --disable-libssp --enable-poison-system-directories --with-build-time-tools=/scratch/maciej/arm-linux-2014.05-rel/install/opt/codesourcery/arm-none-linux-gnueabi/bin --with-build-time-tools=/scratch/maciej/arm-linux-2014.05-rel/install/opt/codesourcery/arm-none-linux-gnueabi/bin SED=sed
#Thread model: posix
#gcc version 4.8.3 20140320 (prerelease) (Sourcery CodeBench Lite 2014.05-29)
