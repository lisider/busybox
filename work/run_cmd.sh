#########################################################################
# File Name: run.sh
# Author: Sues
# mail: sumory.kaka@foxmail.com
# Created Time: Wed 09 Jan 2019 10:18:34 PM PST
# Version : 1.0
#########################################################################
#!/bin/sh

if [ $# -eq 0  ];then
	echo usage: ./run_cmd.sh fuction_name_to_trace  cmd
	echo fuction_name_to_trace is the fuction_name to trace
	echo cmd is the command you run
else
	./function_cmd.sh $@
	[ $? -eq 2  ] && echo $1 can not be traced && return 2
	echo cat trace to out.trace
	cat /sys/kernel/debug/tracing/trace > out.trace
	echo done
	echo alias ot=\'vim -S ./.fungraph-vim out.trace\'
fi

