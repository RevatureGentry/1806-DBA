#!/bin/bash

echo -n "Enter your  birthdate (mm-dd-yyyy): "
read BDATE

BMONTH=${BDATE:0:2}
BDAY=${BDATE:3:2}
BYEAR=${BDATE:6:4}

COUNTDAY=`date +%m-%d-%Y %H:%M:%S`

COUNTMONTH=${COUNTDAY:0:2}
COUNTDAY=${COUNTDAY:3:2}
COUNTYEAR=${COUNTDAY:6:4}

if [[ "$COUNTMONTH" -lt "$BMONTH" ]] || [[ "$COUNTMONTH" -eq "$BMONTH" && "$COUNTDAY" -lt "$BDAY" ]]
then
  let age=cyear-byear-1
else
  let age=cyear-byear
fi

echo "Age = "$age

