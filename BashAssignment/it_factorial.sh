#!/bin/bash

NUM=$1

if [[ $NUM =~ ^[0-9]+$ ]]
	then
		COUNTER=$NUM
		FACTORIAL=1

		while [ $COUNTER -gt 0 ]
			do
				FACTORIAL=$(( $COUNTER * $FACTORIAL ))
				COUNTER=$(( $COUNTER - 1 ))
			done

	echo "The Factorial of $NUM is $FACTORIAL"

else
	echo "$NUM is not a number. Run again with a number as an argument." $$ "Incorrect Argument. $NUM is not a number." 2>> bash_assignment_err_log.txt
fi
