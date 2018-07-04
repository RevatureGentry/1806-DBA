#!/bin/bash

echo What is the first number? Only enter a number.

read n1

echo What is the second number? Only enter a number.

read n2

echo 'Which operation would you like to use? Enter the following operator to select'
echo '+ for addition'
echo '- for subtraction'
echo '* for multiplication'
echo '/ for division'

read o1

#if [$o1 -eq '+' ] || [ $o1 -eq '-' ] || [ $o1 -eq  '*' ] || [ $o1 -eq '/' ];
#then

let results=$n1$o1$n2
echo "The result is $results."

#else
#	echo You need to enter the correct operator. Try again!
#fi
