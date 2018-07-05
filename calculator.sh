#!/bin/bash
read -p "Choose Add(A), Subt(S), Div(D), Mult(M) :" CHOICE

case $CHOICE in
"A") echo "Addition"
read -p "Insert 1st number: " X
read -p "Insert 2nd number: " Y
let N=X+Y
echo $N;;
"S") echo "Subtraction"
read -p "Insert 1st number: " X
read -p "Insert 2nd number: " Y
let N=X-Y
echo $N;;
"D") echo "Division"
read -p "Insert 1st number: " X
read -p "Insert 2nd number: " Y
let N=X/Y
echo $N;;
"M") echo "Multiplication"
read -p "Insert 1st number: " X
read -p "Insert 2nd number: " Y
let N=X\*Y
echo $N;;
esac

