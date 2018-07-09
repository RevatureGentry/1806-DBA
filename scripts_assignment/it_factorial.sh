#!/bin/bash

X=$1

if [[ $X =~ ^[0-9]+$ ]]

then 
	echo "$X is a number"

COUNT=$X
FACTOR=1

while [ $COUNT -gt 0 ]
do
	FACTOR=$(( $COUNT * $FACTOR ))
	COUNT=$(( $COUNT - 1 ))

done
echo "The Factorial of $X is $FACTOR"
else
	echo "$X is not a number"
fi
