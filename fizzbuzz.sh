#!/bin/bash

for (( i=1; i <= 100; i++ )); do

if [[ $i%3 -eq 0 ]] && [[ $i%5 -eq 0 ]]

then
        echo "Fizzbuzz"

elif [[ $i%5 -eq 0 ]]

then
        echo "Buzz"

elif [[ $i%3 -eq 0 ]]

then

        echo "Fizz"
else

        echo $i

fi;

done

