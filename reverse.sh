#!/bin/bash

input=$1
copy=${input}
length=${#copy}

for((int=$length-1;int>=0;int--));
do
	rev="$rev${copy:$int:1}";
#copy is the string it will be indexing
#With length-1, it will take the end of the input and add it to the variable rev.
#$rev$~ will concatenate until int < o
done

echo $rev

