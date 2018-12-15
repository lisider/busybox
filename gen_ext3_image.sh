rm rootfs.ext3
dd if=/dev/zero of=rootfs.ext3 bs=1M count=32
mkfs.ext3 rootfs.ext3
sudo mount -t ext3 rootfs.ext3 /mnt/ -o loop
sudo cp -r rootfs/* /mnt
sudo umount /mnt

echo ${PWD}/rootfs.ext3 is what you want
