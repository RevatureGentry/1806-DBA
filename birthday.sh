#!/bin/bash

# Ask user for their birthday

echo "Enter in mm/dd/yyyy format"
	read birthday

NOW=$(date "+%s")

BIRTHDATE=$(date --date="$birthday" "+%s")

Y=31556926
m=2629743
W=604800 
D=86400 
H=3600
M=60

let Ftime=$NOW-$BIRTHDATE
let year=$Ftime/$Y
let rtime=$Ftime-$year*$Y
let month=$rtime/$m
let rtime2=$rtime-$month*$m
let days=$rtime2/$D
let rtime3=$rtime2-$days*$D
let hours=$rtime3/$H
let rtime4=$rtime3-$hours*$H
let minutes=$rtime4/$M
let rtime5=$rtime4-$minutes*$M
let seconds=$rtime5

	echo "You are "$year" years, "$month" months, "$days" days, "$hours" hours, "$minutes" minutes, and "$seconds" seconds old."


