#!/bin/bash

# We use {a..b} to create a list of every element between (and including) a and b
# We set it to an array by wrapping the curly braces in parentheses
numbers=({1..25})
#echo $numbers

for number in "${numbers[@]}"; do
	if [ $(( number%2 )) == 0 ]
		then 
			echo "$number is even"
		else
			echo "$number is odd"
	fi
done
