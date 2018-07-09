#!/bin/bash

NUM=$1
if [[ $1 =~ ^[0-9]+$ ]]
	then
		if [ $((NUM & 1)) == 0 ]
			then
				echo "$NUM is Even."
			else
				echo "$NUM is Odd."
		fi
	else
		echo "$NUM is not a number. Run again with a number as an argument." $$ "Incorrect Argument. $NUM is not a number." 2>> bash_assignment_err_log.txt
fi
