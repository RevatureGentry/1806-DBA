#!/bin/bash

# This is a comment 
#Nothing inside here will be printed or evaluated 
echo Hello World 
# When we set variables, we leave out the $
# It's a;so best practice to make your variable names uppercase
NAME=Imran

# We had the $ to a varible when we reference it 
# when using single quotes, each character is interpreted literally 
echo '<IN SINGLE QUOTES>...Hello, $NAME!'

# When using double quotes, substitution is allowed 
echo "<IN DOUBLE QUOTES>...Hello, $NAME! What a lovely day learning bash."
#Recall that when we set variables, if it is more than one 
# word/number/anything, we group  them together inside quotes
#MY_VAR=Hello World
# Recall that you cannot have spaces between declaration and 
# Instantiation of a variable 
MY_VAR='Hello World'
echo $MY_VAR


# Variable Expansion 
# What it does, is it allows you to 'expand' the values of your 
# variables into a string
# The syntax is ${the_name_of_your_variable}

echo "Hello, "${NAME}
# However, we can  use variable expansions for other things
#String Substitution
echo $NAME
# ${VARIABLE to be searched/Character(s) to be replaced/Character(s) that replace}
echo ${NAME/'mr'/ 'MR'}

#We can also use Variable Expansion to find substrings
# ${Variable:starting index:ending index:ending index (exclusinve)}
echo ${NAME:0:4}
# We use the pound symbol (#) to get the length of a string
echo "The number of characters in $NAME: "${#NAME}

# We can also use the pound (#) to get length of an array
ARRAY=(HTML CSS JavaScript TypeScript Java)
# We use the '@' to denote All
echo "The length of our array is: "${#ARRAY[@]}

# To access the first element in our array 
echo "The first element is: "${ARRAY[0]}

# To acces the fourth element in our array 
echo "The fourth element is: "${ARRAY[3]}

# we use the '@' to refer to all
echo ${ARRAY[@]} 

