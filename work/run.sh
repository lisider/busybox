#########################################################################
# File Name: run.sh
# Author: Sues
# mail: sumory.kaka@foxmail.com
# Created Time: Wed 09 Jan 2019 10:18:34 PM PST
# Version : 1.0
#########################################################################
#!/bin/sh

if [ $# -eq 0  ];then
	echo usage: ./run.sh fuction_name_to_trace  test
	echo fuction_name_to_trace is the fuction_name to trace
	echo test.ko is the module you insmod
else
	./function.sh $@
	[ $? -eq 2  ] && echo $1 can not be traced && return 2
	echo cat trace to out.trace
	cat /sys/kernel/debug/tracing/trace > out.trace
	echo rmmod $2
	rmmod $2
	echo alias ot=\'vim -S ./.fungraph-vim out.trace\'
fi

