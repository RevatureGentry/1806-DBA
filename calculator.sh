#!/bin/bash
echo 'Input first number'
read num1
echo 'Enter operation + - \\* /'
read oper
echo 'Input second number'
read num2
if ! [ $num1 -eq $num1 ] && [ $num2 -eq $num2 ] 2> bash_assignment_err_log
then
echo 'Error, Please enter a positive number'
else
if [ $oper = '+' ]; then
let out=$num1+$num2
elif [ $oper = '-' ]; then
let out=$num1-$num2
elif [ $oper = "\\*" ]; then
let out=$num1*$num2
elif [ $oper = '/' ]; then
let out=$num1/$num2
else
echo 'Error: Enter valid operator + - * /'
exit
fi
#echo $out
echo "$num1 $oper $num2 is $out"
fi
