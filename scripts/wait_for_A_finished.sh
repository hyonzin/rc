#!/bin/bash

if [ $# -lt 1 ]; then
	echo "args: A_pid"
	exit
fi

SLEEP_TIME=1.0

A_pid=$1

while true; do
	printf "check "
	date
	A_exists=$(ps -ef | awk '{ if($2=="'${A_pid}'") {print($2)} }' | wc -l)
	if [ $A_exists == 0 ]; then 
		break
	fi
	sleep "${SLEEP_TIME}"
done

echo done.
