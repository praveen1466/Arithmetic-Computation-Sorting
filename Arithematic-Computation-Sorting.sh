#! /bin/bash

echo "Welcome to Arithematic Computaion Sorting"
echo "Enter three numbers"
read firstNum
read secondNum
read thirdNum

declare -A aithematicDictionary
declare -a arithematicArray

op1=$(( $firstNum + ($secondNum*$thirdNum) ))
echo "Value of op1 is: $op1"
aithematicDictionary[0]=$op1

op2=$(( ($firstNum*$secondNum) + $thirdNum ))
echo "Value of op2 is: $op2"
aithematicDictionary[1]=$op2

op3=$(( $thirdNum + ($firstNum/$secondNum) ))
echo "Value of op3 is: $op3"
aithematicDictionary[2]=$op3

op4=$(( ($firstNum%$secondNum) + $thirdNum ))
echo "Value of op4 is: $op4"
aithematicDictionary[3]=$op4


len=${#aaithematicDictionary[@]}
for (( i=0; i<4; i++ ))
do
	arithematicArray[$i]=${aithematicDictionary[$i]}
done

echo "Value Stored into Array"
echo ${arithmeticArray[@]}


for (( j=1; j<$len; j++ ))
do
		key=${arithmeticArray[$j]}
                tmp=$(( $j-1 ))
                while (( $tmp>=0 && ${arithmeticArray[tmp]}<$key ))
                do
                        arithmeticArray[$tmp+1]=${arithmeticArray[tmp]}
                        hole=$(( $tmp-1 ))
                done
                arithmeticArray[$tmp+1]=$key
done

echo "Array After Descending Order"
echo ${arithmeticArray[@]}

for (( j=1; j<$len; j++ ))
do
                key=${arithmeticArray[$j]}
                tmp=$(( $j-1 ))
                while (( $tmp>=0 && ${arithmeticArray[tmp]}>$key ))
                do
                        arithmeticArray[$tmp+1]=${arithmeticArray[tmp]}
                        tmp=$(( $tmp-1 ))
                done
                arithmeticArray[$tmp+1]=$key
done

echo "Array In Asscending Order"
echo ${arithmeticArray[@]}
