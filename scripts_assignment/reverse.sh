#!/bin/bash
s=$@

y=${#s}

for (( $y-1; y>=0; y-- ))

do

rev="$rev${s:$y:1}"

done

echo "$rev" 



