#!/bin/bash

2> bash_assignment_err_log.txt

echo Please enter the string you wish to have reversed.
read input

copy=$input
length=${#copy}

for((int=$length-1;int>=0;int--));
do
	rev="$rev${copy:$int:1}";
#copy is the string it will be indexing
#With length-1, it will take the end of the input and add it to the variable rev.
#$rev$~ will concatenate until int < o
done

echo "The reverse of $input is $rev."

