#!/bin/bash

for i in {1..100}; do
	if (( i%3 == 0 && i%5 != 0)); then
		echo "$i Fizz"
	elif (( i%3 != 0 && i%5 == 0)); then
		echo "$i Buzz"
	elif (( i%3 == 0 && i%5 == 0 )); then
		echo "$i FizzBuzz"
	else
		echo "$i"
	fi
done
