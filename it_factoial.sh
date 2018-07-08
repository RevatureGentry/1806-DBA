#!/bin/bash



factorial=1

for (( numb = 1; numb <= $1 ; numb++ ))

do

factorial=$(($factorial * $numb))

done



echo The factorial number for $1 is $factorial


