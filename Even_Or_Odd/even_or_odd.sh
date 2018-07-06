#!/bin/bash

count=$1

if [[ -z "$count" ]]
then
        echo Please enter an argument next time.
        "Please enter an argument next time." 2>> /home/ec2-user/GitHub/1806-DBA/Even_Or_Odd/bash_assignment_error_log.txt
        exit
fi
#Checks to see if the argument is null. If True, stops.

if [[ $count =~ ^[A-Za-z_]+$ ]]
then
        echo Please enter a number next time.
        "Please enter a number next time." 2>> /home/ec2-user/GitHub/1806-DBA/Even_Or_Odd/bash_assignment_error_log.txt
        exit
fi
#This is to ensure the data the user inputs is only numbers.

while [ $count -gt 1 ]
do
	count=$(( $count - 2 ))
done

if [ $count = 0 ]
then
	echo "$1 is Even."
else
	echo "$1 is Odd."
fi
