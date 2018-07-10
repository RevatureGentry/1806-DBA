#!/bin/bash
echo "What was your date of birth formated MM/DD/YYYY:"
read BIRTH

BDate=$(date --date="$BIRTH" +#%s")

NOW=$(date +"%s")

let total=$CurrentDate-$BDate

let Y=$total/31557600
let total=$total%31557600
let D =$total/86400
let total = $total%86400
let H=$total/3600
let M=$total/60
let S=$total%60

echo "You are $Y years, $D days, $H hours, $M minutes ,$S seconds old."
