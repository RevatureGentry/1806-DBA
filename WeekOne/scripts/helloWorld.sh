#!/bin/bash

# Echo prints the provided arguments to stdout
echo Hello World!

# Use semi-colons to seperate a single line into multiple lines on the script
echo 'This is the first line'; echo 'This is the second line';

# Declare a variable
name='William'

# If we provide spaces when declaring the variables, an error will be thrown
# name = 'William'

# Inside double quotes, we can interpolate variables by using the $VAR_NAME
echo "Hello, $name"

# If we use single quotes, we print out $VAR_NAME
# The single quotes tell Bash to interpret the string literally
echo 'Hello, $name'

# The following is an example of variable expansion
# Variable expansion gets a value from a variable. it `expands`, or prints the value
echo 'Hello, '${name}

# We can provide modifications that add onto this expansion
# String substitution
echo 'Hello, '${name/l/' **I Replaced This with l** '} #this will be substituted for the first occurence of first parameter

# Substring (Inclusive)
echo 'Hello, '${name:0:4}

# Declare an array inside parentheses
array=(Java JavaScript SQL TypeScript HTML CSS)

# We can print the first element as like this
echo 'First element of the array: '${array[0]}

# Or we can print the 4th element like this
echo 'Fourth element of the array: '${array[3]}

# We can print all of the elements by passing @ inside the square brackets
echo 'Every element of the array: '${array[@]}

# We can access 'number' options with the #
# For the number of characters in the 3rd element
echo 'Number of characters in SQL: '${#array[2]}

# We can access the number of elements in the array
echo 'Number of elements in array: '${#array[@]}

# Constructing our first for loop
for i in "${array[@]}"; do
	echo "$i"
done


# Brace Expansion is used to generate a range of values
# Works for numbers
echo {1..100}

# and for strings
echo {a..z}

# Interpolation
# To interpolate commands into strings, we use the $() syntax
echo "I'm in $(pwd)" #this executes `pwd` and interpolates the output

# We use the `read` command to read a value from input
echo "What is your name?"
read username
echo Hello $username!

# Conditional Statements
# $USER in this case refers to the environment variable
# Begin an if statement
if [ $username != $USER ]
then
	echo 'You are not the current user.'
else
	echo 'You are the current user.'

# We terminate the if statement with fi
fi
