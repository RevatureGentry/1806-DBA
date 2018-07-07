#!/bin/bash

DATE=$( date +"%d/%m/%Y %H:%M:%S %p")
if [ $# -gt 0 ]
then 
	echo "Do not enter any arguments"
	"$DATE Do not enter any arguments." 2>>bash_assignment_error_log.txt
	exit
fi

ARRAY=({1..100})

for i in "${ARRAY[@]}";
do
	if { ( (("$i" % 3 == 0)) && (("$i" % 5 == 0)) ) }
	then
		echo "$i" 'FizzBuzz'
	elif (( "$i" % 3 == 0 ))
	then
		echo "$i" 'Fizz'
	elif (( "$i" % 5 == 0 ))
	then 
		echo "$i" 'Buzz'
	else
		echo "$i"
	fi
done
