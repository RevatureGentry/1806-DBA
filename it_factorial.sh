#!/bin/bash

count=$1
#Begins the count
number=1
#First iteration will replace number with the first argument then the rest of the process will multiply it by the current 
#counter

while [ $count -gt 0 ] # > won't work. Has to be -gt
do
	number=$(( $number * $count ))
	count=$(( $count - 1 ))
done

echo "The factorial for $1 is $number."
