#!/bin/bash

echo 'Please enter a birthday in YYYYMMDD:'
read birthday
b=`date -d "$birthday" "+%s"`
d=`date "+%s"`
s=$(( d - b))
echo "$r"
years=$(( s / 31556926))
days=$(( s / 86400))
hours=$(( s / 3600))

echo 'Years: ' $years
echo 'Days: ' $days
echo 'Hours: ' $hours
echo 'Seconds: ' $s
