#!/bin/bash
count=1

while [ $count -le  100 ]; do
if [ $((count%3)) -eq 0 ] && [ $((count%5)) -eq 0 ];
then
echo 'FizzBuzz'
elif [ $((count%3)) -eq 0 ];
then 
echo 'Fizz'
elif [ $((count%5)) -eq 0 ];
then
echo 'Buzz'
else
echo $count
fi
let count++
done 
