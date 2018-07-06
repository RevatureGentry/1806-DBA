#!/bin/bash

if [ $# -gt 0 ]
then
	echo "Stop putting arguments in my script, baka!"
	"Stop putting arguments into my script, baka!" 2>> /home/ec2-user/GitHub/1806-DBA/Fizz_Buzz/bash_assignment_error_log.txt
	exit
fi
#Need to exert dominance against those who would assume this script takes arguments from NOBODY!

count=1

while [ $count -le 100 ]
do
	if [[ 0 -eq "($count%3) + ($count%5)" ]]
	then
		echo "fizz buzz"
	elif [[ 0 -eq "($count%3)" ]]
	then
		echo "fizz"
	elif [[ 0 -eq "($count%5)" ]]
	then
		echo "buzz"
	else
		echo "$count"		
	fi
	count=$(( $count + 1 ))
done
