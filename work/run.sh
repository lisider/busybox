#########################################################################
# File Name: run.sh
# Author: Sues
# mail: sumory.kaka@foxmail.com
# Created Time: Wed 09 Jan 2019 10:18:34 PM PST
# Version : 1.0
#########################################################################
#!/bin/sh

if [ $# -eq 0  ];then
	echo usage: ./run.sh fuction_name_to_trace insmod test.ko
else
	./function.sh $@
	cat /sys/kernel/debug/tracing/trace > out.trace
	echo vim -S ./.fungraph-vim out.trace
fi

