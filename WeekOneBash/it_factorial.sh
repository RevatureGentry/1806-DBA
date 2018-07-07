#!/bin/bash

regex=^[0-9]+$

if [[ $1 =~ $regex ]]; then
	COUNT=$1
	RESULT=1
	while [ $COUNT -gt 0 ]; do
		let RESULT=RESULT*COUNT
		let COUNT--
	done
	echo "The factorial of $1 is $RESULT."
else
	echo "Input must be a positive integer."
	echo "$( date +"%d/%m/%Y %H:%M:%S %p" ) -> ERROR in $0: Input must be a postive integer." >> bash_assignment_err_log
fi

