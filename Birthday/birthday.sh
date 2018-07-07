#!/bin/bash

echo "What is your birthday? Format mm/dd/yyyy"
read input
#Records input plz don't put in wrong format.

birthDate=$(date --date="$input" +"%s")
#Converts their input into their birthday in Epochs.

currentDate=$(date +"%s")
#Gives current date's Epochs.

let total=$currentDate-$birthDate
#Variable used to hold the excess from the upcoming operations

let totalYears=$total/31557600 
let total=$total%31557600
let totalDays=$total/86400
let total=$total%86400
let totalHours=$total/3600
let total=$total%3600
totalSeconds=$total
#There is probably an easier way to do this, but I am not a bright man.
#Each calculation either stores the value of the current total as a time or is storing the remainder for the next operation.

echo "You are $totalYears years, $totalDays days, $totalHours hours, $totalSeconds seconds old."
