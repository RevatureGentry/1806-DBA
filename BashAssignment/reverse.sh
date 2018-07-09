#!/bin/bash

STRING_IN=$@

if [[ $STRING_IN =~ ^[" "A-Za-z0-9]+$ ]]
then
	LENGTH=${#STRING_IN}
	for (( i=$LENGTH-1; i>=0; i-- ))
		do
			STRING_OUT="$STRING_OUT${STRING_IN:$i:1}"
		done
	echo $STRING_OUT
else
	echo "$STRING_IN is not alpha-numeric. Run again with alpha-numeric characters as an argument." && "Incorrect Argument. $STRING_IN is not alpha-numeric." 2>> bash_assignment_err_log.txt
fi
