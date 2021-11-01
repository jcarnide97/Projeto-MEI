#!/usr/bin/env bash
count=10
for run in {1..10}; do
	val=`expr $run \* $count`
	echo Output code1 com $val exames
	for run2 in {1..30}; do
		./code1 31235 $1 testes/data_${val}exames90prob.in
	done
	echo Output code2 com $val exames
	for run2 in {1..30}; do
		./code2 31235 $1 testes/data_${val}exames90prob.in
	done
done