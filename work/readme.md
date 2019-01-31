
- run

```c

./run_xxx.sh


./run_cmd.sh SyS_sendfile64 cat /sys/firmware/devicetree/base/node-platform-dts-node/compatible

./run_ko.sh  sysfs_create_group sys_value

./run_module.sh  ftrace_demo #注意,仅仅此 ftrace_demo 可用于此命令

```


- view

```c

cd busybox/rootfs/work

alias ot='vim -S ./.fungraph-vim out.trace'

ot


```
