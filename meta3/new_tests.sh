#!/usr/bin/env bash
gcc code1.c -o code1 -O3
gcc code2.c -o code2 -O3

echo A gerar inputs com 30 exames e prob 0.3
#10 exames
python gen.py 10 0.2 1234 testes/hipotese2/exams10/gen_prob20.in
echo "input1 done"
python gen.py 10 0.4 4251 testes/hipotese2/exams10/gen_prob40.in
echo "input2 done"
python gen.py 10 0.6 3248 testes/hipotese2/exams10/gen_prob60.in
echo "input3 done"
python gen.py 10 0.8 4729 testes/hipotese2/exams10/gen_prob80.in
echo "input4 done"
#20 exames
python gen.py 20 0.2 1234 testes/hipotese2/exams20/gen_prob20.in
echo "input1 done"
python gen.py 20 0.4 4251 testes/hipotese2/exams20/gen_prob40.in
echo "input2 done"
python gen.py 20 0.6 3248 testes/hipotese2/exams20/gen_prob60.in
echo "input3 done"
python gen.py 20 0.8 4729 testes/hipotese2/exams20/gen_prob80.in
echo "input4 done"
#30 exames
python gen.py 30 0.2 1234 testes/hipotese2/exams30/gen_prob20.in
echo "input1 done"
python gen.py 30 0.4 4251 testes/hipotese2/exams30/gen_prob40.in
echo "input2 done"
python gen.py 30 0.6 3248 testes/hipotese2/exams30/gen_prob60.in
echo "input3 done"
python gen.py 30 0.8 4729 testes/hipotese2/exams30/gen_prob80.in
echo "input4 done"
#40 exames
python gen.py 40 0.2 1234 testes/hipotese2/exams40/gen_prob20.in
echo "input1 done"
python gen.py 40 0.4 4251 testes/hipotese2/exams40/gen_prob40.in
echo "input2 done"
python gen.py 40 0.6 3248 testes/hipotese2/exams40/gen_prob60.in
echo "input3 done"
python gen.py 40 0.8 4729 testes/hipotese2/exams40/gen_prob80.in
echo "input4 done"
#50 exames
python gen.py 50 0.2 1234 testes/hipotese2/exams50/gen_prob20.in
echo "input1 done"
python gen.py 50 0.4 4251 testes/hipotese2/exams50/gen_prob40.in
echo "input2 done"
python gen.py 50 0.6 3248 testes/hipotese2/exams50/gen_prob60.in
echo "input3 done"
python gen.py 50 0.8 4729 testes/hipotese2/exams50/gen_prob80.in
