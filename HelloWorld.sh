#!/bin/bash

echo Hello World

# Never use the $

# NAME=Aliah

# when using the variable

# echo 'Hello, $Name!'

# echo "Hello, $Name!" have a nice day"

# MY_VAR='Hello World"

# echo $MY_VAR

# variable Expansion:
# allows you to expand the variables into a string


# echo "hello,"${NAME}

# string Subsitution
# ${variable/character(s) to be the replaced /Character(s) that can be replaced
# echo ${NAME/'li'/'-- I just relpaced the 'li'--}

# We can also use variable expansion to find substrings
# ${VARIABLE:starting index:ending indec (exclusive)}
# N-1
# echo ${NAME:0:4}

# echo "The number of characters in $NAME: '${#NAME}

NAME=Aliah

ARRAY=(HTML CSS JavaScript TypeScript Java)

echo "The Length of our array is: "${#ARRAY[@]}

# To access the first element in our array
echo "the first element is : "${ARRAY[0]}


# To access the fourth element in our array
echo "the Fourth element is : "${ARRAY[3]}

# We use '@' to access All

echo ${ARRAY[@]}


