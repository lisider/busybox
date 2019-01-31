#########################################################################
# File Name: run_module.sh
# Author: Sues
# mail: sumory.kaka@foxmail.com
# Created Time: Wed 30 Jan 2019 09:41:43 PM PST
# Version : 1.0
#########################################################################
#!/bin/bash

if [ $# -eq 0  ];then
	echo usage: ./run_module.sh  test
    echo test is test.ko
else
    ./function_module.sh $@
	echo alias ot=\'vim -S ./.fungraph-vim out.trace\'
fi
