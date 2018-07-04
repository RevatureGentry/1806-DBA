#!/bin/bash

count=$1
if [[ $count =~ ^[A-Za-z_]+$ ]]
then
    echo Please enter a number next time.
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
