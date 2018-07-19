#!/bin/bash

CURRENT_TIME=$(date)
SHORT_DATE=$(date +"%m-%d-%y")
SHORT_DATE_SHORTCUT=$(date +"%D")
LONG_DATE=$(date +"%m-%d-%Y")
LONG_DATE_SHORTCUT=$(date +"%F")
TIME_24_HOUR=$(date +"%T")
TIME_12_HOUR=$(date +"%r")
DAY_OF_WEEK=$(date +"%A")
ABBR_DAY_OF_WEEK=$(date +"%a")
echo "Date: $CURRENT_TIME"
echo "Short Date: $SHORT_DATE"
echo "Short Date Shortcut: $SHORT_DATE_SHORTCUT"
echo "Long Date Shortcut: $LONG_DATE_SHORTCUT"
echo "Long Date: $LONG_DATE"
echo "24 Hour Time: $TIME_24_HOUR"
echo "12 Hour Time: $TIME_12_HOUR"
echo "Today: $DAY_OF_WEEK"
echo "Also Today: $ABBR_DAY_OF_WEEK"
