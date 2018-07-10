#!/bin/bash
Word=$1
Length=${#Word}
Count=$Length

let Count--
Word2=" "
#echo ${Word:Count:1}

while [ $Count -ge 0 ]; do
Word1=${Word:Count:1}
Word2=$Word2$Word1
let Count--
done
echo "The reverse of $1 is$Word2"

 
