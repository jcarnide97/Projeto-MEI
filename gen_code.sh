#!/usr/bin/env bash
gcc code1.c -o code1 -O3
gcc code2.c -o code2 -O3
count=10
for i in $(seq $count); do
	val=`$i * 10`
	echo "$val"
done
