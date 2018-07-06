#!/bin/bash

#grabs the last digit of the number to compare against
num=$1
ldigit="${num: -1}"

#continue variable goe on to determine that the number is odd
cont='true'


for i in {0..8..2}
	do
	if [ $i = $ldigit ]
	then
	#if number is even continue gets set to false and breaks out of 
	#the loop
	cont='false'
	echo 'The number is even'
	break
	fi
	done

	#confirms the number is odd by continue variable being true
	if [ $cont = 'true' ]
	then
	echo 'The number is odd'
	fi
