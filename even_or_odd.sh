#!/bin/bash
echo "Enter in any whole number"

read NUM
DATE=$(date "+%m/%d/%Y")
if [[ $NUM =~ ^[0-9]+$ ]]

then
        echo ""
else
        echo "That is not a number" && echo "$DATE user entered an incorrect variable" >> bash_assignment_err_log.txt
fi

let quotient=$NUM/2

if [[ $((quotient*2)) -eq $NUM ]]

then
	echo $NUM" is an even number."

else
	
	echo $NUM" is an odd number."	
fi


