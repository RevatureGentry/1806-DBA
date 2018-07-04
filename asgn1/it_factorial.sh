#!/bin/bash


#Takes the integer from the user.
echo 'Please enter an integer: '
read INTEGER

#Setting the varibles for the result and the counter.
FACTORIAL=1
I=1

#Loops through as long as the counter is less than the inputted value
while [ $I -le $INTEGER ]
do
	FACTORIAL=$(( FACTORIAL * I ))
	(( I++ ))
done

echo 'The factorial for' $INTEGER 'is' $FACTORIAL
