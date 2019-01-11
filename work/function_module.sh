if [ $# -eq 0  ];then
	echo usage: ./function_module.sh  test.ko
else
    echo 0 >  /sys/kernel/debug/tracing/tracing_on
    echo function_graph > /sys/kernel/debug/tracing/current_tracer
    insmod  $1.ko
    echo :mod:$1 > /sys/kernel/debug/tracing/set_ftrace_filter
    rmmod $1
    echo 1 > /sys/kernel/debug/tracing/tracing_on
    insmod  $1.ko
    rmmod $1
    sleep 1
    cat /sys/kernel/debug/tracing/trace > out.trace
fi




#wit@vexpress:/work # cat /sys/kernel/debug/tracing/set_ftrace_filter
#ftrace_demo_init [ftrace_demo]
#ftrace_demo_exit [ftrace_demo]
