#!/bin/bash

MS=60
HS=3600
DS=86400
YS=31536000

ENOW=$(date "+%s")
echo "Enter your birthday in mm/dd/yyyy format."
read BD
while [[ ! $BD =~ ^(0[1-9]|1[0-2])/(0[1-9]|[1-2][0-9]|3[0-1])/([0-9]{4})$ ]]
do
	echo "Wrong format for the birthday. Enter in mm/dd/yyyy format." && "Wrong Format. User entered ***$BD***." 2>> bash_assignment_err_log.txt
	read BD
done
	EBD=$(date --date="$BD" "+%s")

	AGES=$((ENOW - EBD))

	Y=$((AGES / YS))
	R1=$((AGES % YS))

	D=$((R1 / DS))
	R2=$((R1 % DS))

	H=$((R2 / HS))
	R3=$((R2 % HS))

	M=$((R3 / MS))
	R3=$((R3 % MS))

	S=$R3

	echo "You are $Y year(s), $D day(s), $H hour(s), $M minute(s), and $S second(s) old."
