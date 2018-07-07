#!/bin/bash

#string that will contain the inputs
result=""

#loop runs until user inputs an =

until [ "$o" == '=' ]
	do
	#started off with this line so the '=' doesn't get added to 
	# the string
	result="$result$o"
	echo 'Enter number:'
	read n
	result="$result$n"
	echo 'Enter operator(+-*/) or =:'
	read o
	done
#calculates answer
let calculated="$result"

#outputs answer
echo "$result"' = '"$calculated"
