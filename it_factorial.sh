#!/bin/bash
echo "input number"
read num
if ! [ $num -eq $num ] 2> bash_assignment_err_log
then
echo 'Error, Please enter a positive number'
else
orig=$num
count=$num
while [ $count -gt 1 ]; do
let count=$count-1
let num=$num\*$count
done
echo "The factorial of $orig is $num"
fi

