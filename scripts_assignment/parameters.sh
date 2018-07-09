#!/bin/bash
# Special Parameters
# $0 returns the name of the excuting script 
echo '$0 = '$0

# $1 returns the first argument passed to the script
echo '$1 = '$1

# $2, $3... $9 prints the second to ninth arguments passed 
echo '$2 = '$2
echo '$3 = '$3
echo '$4 = '$4
echo '$5 = '$5
# $# returns the number of arguments passed to the script 
echo '$# gives the number of arguments passed = '$#

# $@ returns all of the argumetns passed to the script 
echo 'The arguments we passed were: '$@

echo 'Can we iterate through $@???? Yes, we can'

for param in "$@";
do 
	echo "$param"
done
