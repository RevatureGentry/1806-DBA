#!/bin/bash

#Gets first number and stores it
echo "Enter 1st number: "
read v1
#Tried to do error log but not working
if [ "v1" = 0 ]
then
        echo "Please enter a number"
        "$DATE Please enter a number" 2>>bash_assignment_error_log.txt
        exit
fi
#Gets operator and stores it
echo "Enter an operator (+, -, *, /): "
read operator
#Gets second number and stores it
echo "Enter 2nd number"
read v2
#Expression to find answer
let answer="$v1 $operator $v2"
echo "The answer is $answer"







#Tried to do it with if statement but wouldnt work
	#if [ " $operator " = " +" ];
	#then
	#answer=$("$v1+$v2");
	#elif [ " $ operator " = " - " ];
	#then 
	#answer=$("$v1-$v2");
	#elif [ " $ operator " = " * " ];
	#then 
	#answer=$("$v1*$v2");
	#elif [ " $ operator " = " / " ]; 
	#then
	#answer=$("$v1/$v2");
	#fi
	#echo "$v1 $operator $v2 = "
	#echo "$answer"
