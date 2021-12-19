count=10
prob=20
rs=21
echo Tempo máximo de execução = 100s
for run in {1..5}; do
    ex=`expr $run \* $count` 
    for run3 in {1..4}; do
        p=`expr $run3 \* $prob`
        echo Running 20 tests with exams ${ex} and prob ${p} with code1
        for run2 in {1..20}; do
            ./code1 $run2 100 testes/hipotese2/exams${ex}/gen_prob${p}.in
        done
    done
    for run4 in {1..4}; do
        p2=`expr $run4 \* $prob`
        echo Running 20 tests with exams ${ex} and prob ${p2} with code2
        for run5 in {1..20}; do
            val=`expr $run5 \* $rs`
            ./code2 $val 100 testes/hipotese2/exams${ex}/gen_prob${p2}.in
        done
    done
done