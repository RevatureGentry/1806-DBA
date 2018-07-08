#!/bin/bash
num="$1"
#Set date for error output
DATE=$( date + "%d/%m/%Y %H:%M:%S %p")
#Error output if user does not enter a number or enters 2 numbers
if ([ $# -eq 0 ] || [ $# -gt 1])
then
	echo "Please enter 1 number"
	"$DATE Please enter 1 number" 2>>bash_assignment_error_log.txt
	exit
fi
#calculate modulus
let x="$num"/2
let i="$x"*2
let m="$num"-"$i"
#if statement to find even or odd using calculation
if ([ "$m" -eq 0 ])
then
	echo "$num" is even
else
	echo  "$num" is odd
fi
