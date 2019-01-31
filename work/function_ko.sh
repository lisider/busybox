#!/bin/sh

grep -w $1 /sys/kernel/debug/tracing/available_filter_functions -nr > /dev/null
[ $? -eq 0  ] ||  return 2
echo $1 can be traced

echo set the trace
debugfs=/sys/kernel/debug
echo nop > $debugfs/tracing/current_tracer
echo 0 > $debugfs/tracing/tracing_on
echo $$ > $debugfs/tracing/set_ftrace_pid
echo function_graph > $debugfs/tracing/current_tracer
#replace test_proc_show by your function name
echo $1  > $debugfs/tracing/set_graph_function
echo 1 > $debugfs/tracing/tracing_on
echo set the trace done
echo insmod $2.ko
exec insmod $2.ko

