#!/bin/bash

echo 'Please enter a birthday:'
read birthday

echo $((date -d "2010-06-01" "+%s")) - $(date -d "2010-05-15" "+%s") ) / 86400))
