#!/bin/bash
read -p "Please type a sentance: " STRING
#echo $STRING | rev

GNIRTS=""

LENGTH=${#STRING}
for (( i=$LENGTH-1; i>=0; i--))
do
GNIRTS="$GNIRTS${STRING:$i:1}"
done

echo "$GNIRTS"
