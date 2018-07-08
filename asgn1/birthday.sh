#!/bin/bash

echo 'Please enter a birthday in YYYYMMDD:'
read birthday
#converts birthday into seconds
b=`date -d "$birthday" "+%s"`
#grabs system time
d=`date "+%s"`
#difference between the 2
s=$(( d - b))

#converts seconds to years, days, and hours
years=$(( s / 31556926))
days=$(( s / 86400))
hours=$(( s / 3600))

#output
echo 'Years: ' $years
echo 'Days: ' $days
echo 'Hours: ' $hours
echo 'Seconds: ' $s
