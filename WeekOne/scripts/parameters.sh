#!/bin/bash

# Special Variables
# These variables are available in every script

# $0 will always refer to the name of the executing script
echo '$0 => '$0

# $1, $2, ... , $9 will refer to the first 9 arguments passed to the script
echo '$1 => '$1
echo '$2 => '$2
echo '$3 => '$3
echo '$4 => '$4
echo '$5 => '$5
echo '$6 => '$6
echo '$7 => '$7
echo '$8 => '$8
echo '$9 => '$9

# We use $# to access the total number of arguments passed
echo "The number of parameters provided: $#"

# We use $@ to access all of the parameters passed
echo "All of the parameters provided: $@"

# We can iterate through all of the arguments passed to the script like this
