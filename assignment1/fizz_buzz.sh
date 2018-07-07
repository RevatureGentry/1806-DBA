#!/bin/bash
# Set date for error output
DATE=$( date +"%d/%m/%Y %H:%M:%S %p")
# Error Output if user inserts argument
if [ $# -gt 0 ]
then 
	echo "Do not enter any arguments"
	"$DATE Do not enter any arguments." 2>>bash_assignment_error_log.txt
	exit
fi
# Set array for numbers 1 to 100
ARRAY=({1..100})
# Use for loop to run through the array
for num in "${ARRAY[@]}";
do
# Set conditions to find remainder = 0 & print corresponding output
	if { ( (("$num" % 3 == 0)) && (("$num" % 5 == 0)) ) }
	then
		echo "$num" 'FizzBuzz'
	elif (( "$num" % 3 == 0 ))
	then
		echo "$num" 'Fizz'
	elif (( "$num" % 5 == 0 ))
	then 
		echo "$num" 'Buzz'
	else
		echo "$num"
	fi
done
