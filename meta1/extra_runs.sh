#!/usr/bin/env bash
for run in {51..59}; do
	python gen.py $run 0.1 1234 testes/prob10/data_${run}exames10prob.in
done
for run in {41..49}; do
	python gen.py $run 0.3 2345 testes/prob30/data_${run}exames30prob.in
done
for run in {31..39}; do
	python gen.py $run 0.5 3445 testes/prob50/data_${run}exames50prob.in
done
for run in {21..29}; do
	python gen.py $run 0.7 5678 testes/prob70/data_${run}exames70prob.in
done
for run in {11..19}; do
	python gen.py $run 0.9 7932 testes/prob90/data_${run}exames90prob.in
done
echo -----------Prob 10--------------
echo Code 1 de 51 a 59
./code1 12345 100 testes/prob10/data_51exames10prob.in
./code1 23456 100 testes/prob10/data_52exames10prob.in
./code1 34646 100 testes/prob10/data_53exames10prob.in
./code1 89356 100 testes/prob10/data_54exames10prob.in
./code1 93287 100 testes/prob10/data_55exames10prob.in
./code1 93287 100 testes/prob10/data_56exames10prob.in
./code1 97586 100 testes/prob10/data_57exames10prob.in
./code1 23756 100 testes/prob10/data_58exames10prob.in
./code1 24895 100 testes/prob10/data_59exames10prob.in
echo Code 2 de 51 a 59
./code2 34879 100 testes/prob10/data_51exames10prob.in
./code2 34897 100 testes/prob10/data_52exames10prob.in
./code2 28674 100 testes/prob10/data_53exames10prob.in
./code2 96834 100 testes/prob10/data_54exames10prob.in
./code2 64384 100 testes/prob10/data_55exames10prob.in
./code2 60348 100 testes/prob10/data_56exames10prob.in
./code2 18247 100 testes/prob10/data_57exames10prob.in
./code2 57348 100 testes/prob10/data_58exames10prob.in
./code2 93428 100 testes/prob10/data_59exames10prob.in
echo -----------Prob 30--------------
echo Code 1 de 41 a 49
./code1 43028 100 testes/prob30/data_41exames30prob.in
./code1 84545 100 testes/prob30/data_42exames30prob.in
./code1 54893 100 testes/prob30/data_43exames30prob.in
./code1 83947 100 testes/prob30/data_44exames30prob.in
./code1 98435 100 testes/prob30/data_45exames30prob.in
./code1 65487 100 testes/prob30/data_46exames30prob.in
./code1 34086 100 testes/prob30/data_47exames30prob.in
./code1 34058 100 testes/prob30/data_48exames30prob.in
./code1 28345 100 testes/prob30/data_49exames30prob.in
echo Code 2 de 41 a 49
./code2 43085 100 testes/prob30/data_41exames30prob.in
./code2 32450 100 testes/prob30/data_42exames30prob.in
./code2 80756 100 testes/prob30/data_43exames30prob.in
./code2 48956 100 testes/prob30/data_44exames30prob.in
./code2 53487 100 testes/prob30/data_45exames30prob.in
./code2 34958 100 testes/prob30/data_46exames30prob.in
./code2 34086 100 testes/prob30/data_47exames30prob.in
./code2 12595 100 testes/prob30/data_48exames30prob.in
./code2 43085 100 testes/prob30/data_49exames30prob.in
echo -----------Prob 50--------------
echo Code 1 de 31 a 39
./code1 31235 100 testes/prob50/data_31exames50prob.in
./code1 68935 100 testes/prob50/data_32exames50prob.in
./code1 34985 100 testes/prob50/data_33exames50prob.in
./code1 32059 100 testes/prob50/data_34exames50prob.in
./code1 32489 100 testes/prob50/data_35exames50prob.in
./code1 35783 100 testes/prob50/data_36exames50prob.in
./code1 57839 100 testes/prob50/data_37exames50prob.in
./code1 58439 100 testes/prob50/data_38exames50prob.in
./code1 59485 100 testes/prob50/data_39exames50prob.in
echo Code 2 de 31 a 39
./code2 27530 100 testes/prob50/data_31exames50prob.in
./code2 43928 100 testes/prob50/data_32exames50prob.in
./code2 33528 100 testes/prob50/data_33exames50prob.in
./code2 32545 100 testes/prob50/data_34exames50prob.in
./code2 39384 100 testes/prob50/data_35exames50prob.in
./code2 30024 100 testes/prob50/data_36exames50prob.in
./code2 14988 100 testes/prob50/data_37exames50prob.in
./code2 14453 100 testes/prob50/data_38exames50prob.in
./code2 42308 100 testes/prob50/data_39exames50prob.in
echo -----------Prob 70--------------
echo Code 1 de 21 a 29
./code1 31242 100 testes/prob70/data_21exames70prob.in
./code1 31235 100 testes/prob70/data_22exames70prob.in
./code1 32483 100 testes/prob70/data_23exames70prob.in
./code1 32347 100 testes/prob70/data_24exames70prob.in
./code1 25824 100 testes/prob70/data_25exames70prob.in
./code1 23032 100 testes/prob70/data_26exames70prob.in
./code1 35425 100 testes/prob70/data_27exames70prob.in
./code1 42345 100 testes/prob70/data_28exames70prob.in
./code1 25345 100 testes/prob70/data_29exames70prob.in
echo Code 2 de 21 a 29
./code2 31232 100 testes/prob70/data_21exames70prob.in
./code2 32524 100 testes/prob70/data_22exames70prob.in
./code2 31325 100 testes/prob70/data_23exames70prob.in
./code2 33335 100 testes/prob70/data_24exames70prob.in
./code2 31555 100 testes/prob70/data_25exames70prob.in
./code2 33333 100 testes/prob70/data_26exames70prob.in
./code2 11111 100 testes/prob70/data_27exames70prob.in
./code2 33333 100 testes/prob70/data_28exames70prob.in
./code2 33343 100 testes/prob70/data_29exames70prob.in
echo -----------Prob 90--------------
echo Code 1 de 11 a 19
./code1 32345 100 testes/prob90/data_11exames90prob.in
./code1 23452 100 testes/prob90/data_12exames90prob.in
./code1 53923 100 testes/prob90/data_13exames90prob.in
./code1 32592 100 testes/prob90/data_14exames90prob.in
./code1 14849 100 testes/prob90/data_15exames90prob.in
./code1 48233 100 testes/prob90/data_16exames90prob.in
./code1 43255 100 testes/prob90/data_17exames90prob.in
./code1 25904 100 testes/prob90/data_18exames90prob.in
./code1 24398 100 testes/prob90/data_19exames90prob.in
echo Code 2 de 11 a 19
./code2 94827 100 testes/prob90/data_11exames90prob.in
./code2 23453 100 testes/prob90/data_12exames90prob.in
./code2 32859 100 testes/prob90/data_13exames90prob.in
./code2 33445 100 testes/prob90/data_14exames90prob.in
./code2 34532 100 testes/prob90/data_15exames90prob.in
./code2 53254 100 testes/prob90/data_16exames90prob.in
./code2 98493 100 testes/prob90/data_17exames90prob.in
./code2 47593 100 testes/prob90/data_18exames90prob.in
./code2 48394 100 testes/prob90/data_19exames90prob.in
