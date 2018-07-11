#!/bin/bash
echo "Enter number between 1 and 100: "
read num
myNumber='^[0-9]+$'
if ! [[ $num =~ $myNumber ]] ; then
echo "error: Not a number"
exit

fi

if  (( $num%3 == 0 ))
then
        echo "Fizz"
fi
if (( $num%5 == 0 ))
then
        echo "Buzz"

fi
if (($num%3==0 && $num%5==0 ))
then
        echo "FizzBuzz"

fi
exit

