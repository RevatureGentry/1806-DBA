#!/bin/bash
read -p "Enter a number:"$COUNT
X=1
while [ $COUNT > 1 ]; do
let X=$(X*COUNT)
let COUNT--
done
echo "The factorial is $X"
