#! /bin/bash

echo "Welcome to Arithematic Computaion Sorting"
echo "Enter three numbers"
read firstNum
read secondNum
read thirdNum

op1=$(( $firstNum + ($secondNum*$thirdNum) ))
echo "Value of op1 is: $op1"

op2=$(( ($firstNum*$secondNum) + $thirdNum ))
echo "Value of op2 is: $op2"

op3=$(( $thirdNum + ($firstNum/$secondNum) ))
echo "Value of op3 is: $op3"
