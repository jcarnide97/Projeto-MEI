#!/usr/bin/env bash

#count=101
#echo Tempo máximo de execução = 100s
#echo numero de exames 30 com prob 0.5
#for run in {1..3}; do
#    echo Running 100 tests with input $run with code1
#    for run2 in {1..100}; do
#        ./code1 $run2 100 testes/hipotese1/exams30input${run}/gen_input${run}.in
#    done
#    echo Running 100 tests with input $run with code2
#    for run2 in {1..100}; do
#        val=`expr $run2 \* $count`
#        ./code2 $val 100 testes/hipotese1/exams30input${run}/gen_input${run}.in
#    done
#done

count=101
echo Tempo máximo de execução = 100s
echo numero de exames 40 com prob 0.1
for run in {1..3}; do
    echo Running 100 tests with input $run with code1
    for run2 in {1..100}; do
        ./code1 $run2 100 testes/hipotese1/exams40input${run}/gen_input${run}.in
    done
    echo Running 100 tests with input $run with code2
    for run2 in {1..100}; do
        val=`expr $run2 \* $count`
        ./code2 $val 100 testes/hipotese1/exams40input${run}/gen_input${run}.in
    done
done