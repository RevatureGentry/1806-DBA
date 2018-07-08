#!/bin/bash

echo "Enter first number of the calculation"

read NUM1

echo "Enter second number of the calculation"

read NUM2


let a=$NUM1+$NUM2
let b=$NUM1-$NUM2
let c=$NUM1*$NUM2
let d=$NUM1/$NUM2

	echo "Please enter 1 for addion(+), 2 for subtraction(-), 3 for multiplication(*), and 4 for division(/)."
read -s function

if [[ $function -eq 1 ]]; 

then

 	echo $NUM1"+"$NUM2"="$a

elif [[ $function -eq 2 ]]; 

then

	echo $NUM1"-"$NUM2"="$b

elif [[ $function -eq 3 ]]; 

then

	echo $NUM1"*"$NUM2"="$c

elif [[ $function -eq 4 ]]; 

then

	echo $NUM1"/"$NUM2"="$d

 fi 
