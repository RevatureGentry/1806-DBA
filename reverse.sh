#!/bin/bash

read -p "Please type a sentance: " STRING
LENGTH='echo ${#STRING}'
while [ $length -gt 0 ]
do
GNIRTS='echo $STRING | cut -c $length'
((LENGTH--))
done
echo $GNIRTS

