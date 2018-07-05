#!/bin/bash/
echo 'Enter Number'
read NUMBER
myNumber='^[0-9]+$'
if ! [[ $NUMBER =~ $myNumber ]] ; then
echo "error: Not a number"
exit
fi
FACTORIAL=1
for ((i=1;i<=NUMBER;i++))
do
FACTORIAL=$(($FACTORIAL*$i))
done
echo $FACTORIAL

