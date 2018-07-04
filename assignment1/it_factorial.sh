#!/bin/bash

echo "Enter an integer:" 
read n
factorial=1
counter=1
while [ $counter -le $n ]
do
	factorial=$((factorial*$counter))
	((counter++))
done
echo $factorial 
