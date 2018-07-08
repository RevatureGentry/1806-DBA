#!/bin/bash

#Ask user for birth year/month/day
read -p "Enter your birth year: (yyyy)" year
read -p "Enter your birth month: (mm)" month
read -p "Enter your birth day: (dd)" day

#Finds default time, converts year/day/hour to seconds, differnce finds 
#seconds lived 
secomds
systemtime=`date "+%s"`
birth=`date -d "$year$month$day" "+%s"`
epoch=$(( systemtime - birth ))

#Calculate age by dividing seconds lived by how many seconds in 
#year/day/hour
let Y=epoch/31556926
let D=epoch/86400
let H=epoch/3600

#Print out results
echo "You are $Y years old"
echo "You are $D days old"
echo "You are $H hours old"
echo "You are $epoch seconds old"

