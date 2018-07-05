#!/bin/bash

input=$1
copy=$input
length=${#copy}

if [[ -z "$input" ]]
then
    echo Please enter an argument next time.
    exit
fi
#Checks to see if the argument is null. If True, stops.

for((int=$length-1;int>=0;int--));
do
	rev="$rev${copy:$int:1}";
	#copy is the string it will be indexing
	#With length-1, it will take the end of the input and add it to the variable rev.
	#$rev$~ will concatenate until int < o
done

echo "The reverse of $input is $rev."

