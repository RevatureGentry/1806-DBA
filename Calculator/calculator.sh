#!/bin/bash

while true
do
	echo Please enter the first number you wish to calculate.
	read n1
	while [[ ! $n1 =~ ^[0-9]+$ ]]
	do
    		echo Please enter the first number you wish to calculate.
    		"Please enter the first number you wish to calculate." 2>> /home/ec2-user/GitHub/1806-DBA/Calculator/bash_assignment_error_log.txt
		read n1
	done
	#Data validation so only a number is accepted.

	echo Please enter the second number you wish to calculate.
	read n2
	while [[ ! $n2 =~ ^[0-9]+$ ]]
	do
    		echo Please enter the second number you wish to calculate.
  		"Please enter the second number you wish to calculate." 2>> /home/ec2-user/GitHub/1806-DBA/Calculator/bash_assignment_error_log.txt
		read n2
	done
	#Data validation so only a number is accepted.

	echo "Which operation would you like to use?"

	select ans in add subtract multiply divide; do
		case $ans in
			add) op='+'
			break ;;
			subtract) op='-'
			break ;;
			multiply) op='*'
			break ;;
			divide) op='/'
			break ;;
			*) echo "invalid response" && "Not a valid response." 2>> /home/ec2-user/GitHub/1806-DBA/Calculator/bash_assignment_error_log.txt
			;;
		esac
	done
	#Presents the four options for arithmetic while looping if any other input is given.
	let ans="$n1$op$n2"
	#Does the calculation from the inputs
	printf "%s %s %s = %s\n\n" "$n1" "$op" "$n2" "$ans"
	#Fancy formatting to present the calculation
done
#While True will allow it to loop once the calculation is complete
