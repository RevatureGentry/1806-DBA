#!/bin/bash
read -p "Enter a Number: " X
while [ $X -gt 2 ]
do Y=$(($X-2))
let X=$Y
done

if [ $X == 1 ]
then echo 'Odd'
else
echo 'Even'
fi

