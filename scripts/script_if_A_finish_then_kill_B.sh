#!/bin/bash

if [ $# -lt 2 ]; then
	echo "args: A_pid, B_pid"
	exit
fi

SLEEP_TIME=1.0

A_pid=$1
B_pid=$2

while true; do
	printf "check "
	date
	A_exists=$(ps -ef | awk '{print($2)}' | grep ${A_pid} | wc -l)
	if [ $A_exists == 0 ]; then 
		echo kill -9 ${B_pid}
		kill -9 ${B_pid}
		break
	fi
	sleep "${SLEEP_TIME}"
done

echo done.
