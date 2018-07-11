#!/bin/bash
int="y"
while [ $int = "y" ]
echo " Enter number: "
read num1
echo "Enter another number: "
read num2
do
echo "1.Add"
echo "2.Subtract"
echo "3.Multiply"
echo "4.Divid"
echo "Enter your choice"
read ch
case $ch in
    1)sum=`expr $num1 + $num2`
     echo "Sum ="$sum;;
        2)sum=`expr $num1 - $num2`
     echo "Sub = "$sum;;
 3)sum=`expr $num1 \* $num2`
     echo "Mul = "$sum;;
    4)sum=`expr $num1 / $num2`
     echo "Div = "$sum;;
    *)echo "Invalid choice";;
esac
echo "Do u want to continue ?"
read int
if [ $int != "y" ]
then
    exit
else [int = "y"]
clear
fi
done
