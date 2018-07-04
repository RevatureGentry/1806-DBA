#!/bin/bash

#Takes input from the user
echo 'Please enter a string:'
read INPUT


LEN=${#INPUT}

#i grabs the last position of the string
i=$(( $LEN - 1 ))

#i keeps decrementing until it is less than 0
until [ $i -lt 0 ]
do
	REV="$REV${INPUT:$i:1}"
	(( i-- ))
done

#output
echo  $REV
