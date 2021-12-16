#!/usr/bin/env bash

echo numero de exames 50 com prob 0.1
for run in {2..3}; do
    echo Running 100 tests with input $run with code1
    for run2 in {1..100}; do
        ./code2 $run2 100 testes/hipotese1/exams50input${run}/gen_input${run}.in
    done
    echo Running 100 tests with input $run with code2
    for run2 in {1..100}; do
        val=`expr $ru2 \* 101`
        ./code2 $run2 100 testes/hipotese1/exams50input${run}/gen_input${run}.in
    done
done