#!/bin/bash

NUMBER1=""
while [[ ! $NUMBER1 =~ ^[0-9]+$ ]]
	do
		echo "Please enter first number."
		read NUMBER1
	done

NUMBER2=""
while [[ ! $NUMBER2 =~ ^[0-9]+$ ]]
	do
		echo "Please enter second number."
		read NUMBER2
	done

echo "Pick a desired operation between 1 to 4: "
echo "1 for Addition."               
echo "2 for Subtraction."
echo "3 for Multiplication."
echo "4 for Division."

read OP
while [[ $OP -lt 1 || $OP -gt 4 ]]
	do
		echo "Selection not between 1 to 4. Enter again." && "User entered a value outside the range [1..4]." 2>> bash_assignment_err_log.txt
		read OP
	done
if [[ $OP -eq 1 ]]
	then
		RESULT=$((NUMBER1 + NUMBER2))
elif [[ $OP -eq 2 ]]
	then
		RESULT=$((NUMBER1 - NUMBER2))
elif [[ $OP -eq 3 ]]
	then
		RESULT=$((NUMBER1 * NUMBER2))
elif [[ $OP -eq 4 ]]
	then
		while [[ $NUMBER2 -eq 0 ]]
			do
				echo "Can't divide by 0. Enter a number greater than 0." && "Zero Division Error." 2>> bash_assignment_err_log.txt
				read NUMBER2
			done
		RESULT=$((NUMBER1 / NUMBER2))
fi
echo "Answer is $RESULT"
