#! /bin/zsh
# ITER_COUNTS에 담긴 각 iterCount으로 애플리케이션 실행

ITER_COUNTS=(
    5000
    6000
    7000
    8000
    10000
    20000
    30000
    40000
    50000
    60000
    70000
    80000
    90000
    100000
    200000
)

##### javac compilation #####

# javac Application.java

##### run (for ITER_COUNTS) #####

for ITER_COUNT in "${ITER_COUNTS[@]}"
do
    LOGFILE="iterCount_${ITER_COUNT}.log"

    java \
    -XX:+UnlockDiagnosticVMOptions \
    -XX:+LogCompilation \
    -XX:LogFile="${LOGFILE}" \
    Application "${ITER_COUNT}"
done