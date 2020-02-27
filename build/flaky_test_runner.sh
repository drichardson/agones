#!/bin/bash

x=1
while true; do
	echo "RUNNING TEST $x"
	make test-e2e-integration ARGS='-run TestGameServerReserve'
	if [[ $? -ne 0 ]]; then
		echo "Test failed on iteration $x"
		exit 1
	fi
	x=$((x+1))
done
