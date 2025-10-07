#!/bin/bash

if [[ $# -lt 2 ]]; then
    echo "Usage: $0 <board> <test_path>"
    exit 1
fi

YELLOW='\033[1;33m'
RESET='\033[0m'

BOARD="$1"
TEST_DIR="$2"

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# -cp ->  measure channel capacity
# -di -> samples are discrete
# -v 0 -> verbosity (0 to 5)

CONTENTION="contention"
NO_CONTENTION="no_contention"

# cp ${TEST_DIR}/samples_cont.txt \
# 	${TEST_DIR}/Results/"$BOARD"_"$CONTENTION"_samples.txt

# cp ${TEST_DIR}/samples_no_cont.txt \
# 	${TEST_DIR}/Results/"$BOARD"_"$NO_CONTENTION"_samples.txt

echo -e "\n${YELLOW}Measuring channel with contention (leaskiest)${RESET}"

java -jar $ROOT_DIR/leakiest-1.4.9.jar -di -cp -v 0 \
	$TEST_DIR/Results/"$BOARD"_"$CONTENTION"_samples.txt \
	> $TEST_DIR/Results/"$BOARD"_"$CONTENTION"_capacity.txt

cat $TEST_DIR/Results/"$BOARD"_"$CONTENTION"_capacity.txt

echo " "
#echo "Measuring channel without contention"

#java -jar ./leakiest-1.4.9.jar -di -cp -v 0 \
#	 ${TEST_DIR}/Results/"$BOARD"_"$NO_CONTENTION"_samples.txt \
#	 > ${TEST_DIR}/Results/"$BOARD"_"$NO_CONTENTION"_capacity.txt

#cat ${TEST_DIR}/Results/"$BOARD"_"$NO_CONTENTION"_capacity.txt

echo " "
echo -e "\n${YELLOW}Print Matrix (leaskiest)${RESET}"

java -jar $ROOT_DIR/leakiest-1.4.9.jar -di -cp -v 0 -p \
	 $TEST_DIR/Results/"$BOARD"_"$CONTENTION"_samples.txt \
	 > $TEST_DIR/Results/"$BOARD"_ch_matrix.txt
