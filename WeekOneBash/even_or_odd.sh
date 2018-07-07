#!/bin/bash

re='^[0-9]+$'

if [[ $1 =~ $re ]]; then
	let COUNT=$1-$1/2
	echo "COUNT = $COUNT and \$1/2 is $(($1/2))"
	if [[ COUNT -eq $1/2 ]]; then
		echo "$1 is an even number."
	else
		echo "$1 is an odd number."
	fi
else
	echo "Input must be a positive integer."
	echo "$( date +"%d/%m/%Y %H:%M:%S %p" ) -> ERROR in $0: Input must be a postive integer." >> bash_assignment_err_log
fi

exit 2>> bash_assignment_err_log
