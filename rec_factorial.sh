#!/bin/bash

input="${1}"    reverse=""

for   (( i=0; i<${#input}; i++ ))
do    reverse="${input:${i}:1}$reverse"
done

echo   "$reverse"

