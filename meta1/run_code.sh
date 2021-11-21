#!/usr/bin/env bash
gcc code1.c -o code1 -O3
gcc code2.c -o code2 -O3
count=10
for run in {1..10}; do
	for test in {1..30}; do
		./code1 
	done
done
