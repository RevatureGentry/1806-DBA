#!/bin/bash 

#Take input
read -p "Enter string: " String 

#Find length of input
Length=${#String}

#Prints out input & its length
echo "$Length" 
echo "$String"

#for loop runs refrencing the length and taking away 1 in order to get 
#reverse; runs until i=0
for((i=$Length-1;i>=0;i--))
do 
	#to get single character from the string
	reverse="$reverse${String:$i:1}"
done 

#prints reverse
echo "$reverse"
