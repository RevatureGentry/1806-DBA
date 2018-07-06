#!/bin/bash

# $@ considers all arguments and will take a single string or 
# characters that are spaces out

INPUT=$@

REVERSE=""
 
LEN=${#INPUT}

# This is what happens when the loop runs. checks the i to seee if it is 0 and up and 

# decrements it by 1 each time the loop runs.

for (( I=$LEN-1; I>=0; I-- ))

do 

# 1st reverse variable is getting concatenated with the last letter of my name and 
# iterating through the rest of the characters in reverse until the value of i goes below 0.

	REVERSE="$REVERSE${INPUT:$I:1}"
done
 
echo "$REVERSE"

DATE=$(date '+%Y-%m-%d %H:%M:%S')

if [ $# -eq 0 ]
  then
    echo "No arguments supplied" && echo "$DATE user didnt supply an argument" >> bash_assignment_err_log.txt
fi

