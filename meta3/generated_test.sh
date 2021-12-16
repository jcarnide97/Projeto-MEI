#!/usr/bin/env bash
gcc code1.c -o code1 -O3
gcc code2.c -o code2 -O3

echo A gerar inputs com 30 exames e prob 0.3
python gen.py 30 0.3 1234 testes/hipotese1/exams30input1/gen_input1.in
echo "input1 done"
python gen.py 30 0.3 4251 testes/hipotese1/exams30input2/gen_input2.in
echo "input2 done"
python gen.py 30 0.3 3248 testes/hipotese1/exams30input3/gen_input3.in
echo "input3 done"

echo A gerar inputs com 50 exames e prob 0.1
python gen.py 50 0.1 5832 testes/hipotese1/exams50input1/gen_input1.in
echo "input1 done"
python gen.py 50 0.1 5485 testes/hipotese1/exams50input2/gen_input2.in
echo "input2 done"
python gen.py 50 0.1 7128 testes/hipotese1/exams50input3/gen_input3.in
echo "input3 done"