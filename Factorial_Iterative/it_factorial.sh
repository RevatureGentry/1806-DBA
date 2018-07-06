#!/bin/bash

count=$1
#Stores argument for incrementing.

if [[ -z "$count" ]]
then
	echo Please enter an argument next time.
	"Please enter an argument next time." 2>> /home/ec2-user/GitHub/1806-DBA/Calculator/bash_assignment_error_log.txt
	exit
fi
#Checks to see if the argument is null. If True, stops.

if [[ $count =~ ^[A-Za-z_]+$ ]]
then
	echo Please enter a number next time.
	"Please enter a number next time." 2>> /home/ec2-user/GitHub/1806-DBA/Calculator/bash_assignment_error_log.txt
	exit
fi
#This is to ensure the data the user inputs is only numbers.

input=$count
#Need to store their answer for the end
number=1
#What will hold the total

while [ $count -gt 0 ]
do
	number=$(( $number * $count ))
	count=$(( $count - 1 ))
done
#Until the number given by the user (count) is < 1, it will multiple the count by number to modify number with the newest 
#calculation
echo "The factorial of $input is $number."
