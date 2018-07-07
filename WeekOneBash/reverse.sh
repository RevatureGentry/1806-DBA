#!/bin/bash

STRING="$1"

for((i=${#STRING}-1;i>=0;i--)); do
	echo -n "${STRING:$i:1}"
done

echo ""
