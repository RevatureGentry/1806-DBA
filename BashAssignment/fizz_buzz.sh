#!/bin/bash

NUMBERS=({1..100})

for num in "${NUMBERS[@]}";
do
	if [ $(( num % 5 )) == 0 ] && [ $(( num % 3 )) == 0 ]
		then
			echo "$num: FizzBuzz"
	elif [ $(( num % 5 )) == 0 ]
		then
			echo "$num: Buzz"
	elif [ $(( num % 3 )) == 0 ]
		then
			echo "$num: Fizz"
	else
		echo "$num: *"
	fi
done
