#!/usr/bin/env bash
gcc code1.c -o code1 -O3
gcc code2.c -o code2 -O3
count=10
for run in {1..10}; do
	val=`expr $run \* $count`
	for run2 in {1..30}; do
		echo Output code1 com $val exames $run2:
		./code1 31235 $1 testes/data_${val}exames10prob.in
	done
	for run2 in {1..30}; do
		echo Output code2 com $val exames $run2:
		./code2 31235 $1 testes/data_${val}exames10prob.in
	done
done