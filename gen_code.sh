#!/usr/bin/env bash
gcc code1.c -o code1 -O3
gcc code2.c -o code2 -O3
count=10
for run in {1..10}; do
	val=`expr $run \* $count`
	python gen.py $val 0.1 3125 testes/data_${val}exames10prob.in
done
