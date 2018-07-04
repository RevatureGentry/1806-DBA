#!/bin/bash
while true; do
    read -p "what's the first number? " n1
    read -p "what's the second number? " n2
    PS3="what's the operation? "
    select ans in add subtract multiply divide; do
        case $ans in 
            add) op='+' ; break ;;
            subtract) op='-' ; break ;;
            multiply) op='*' ; break ;;
            divide) op='/' ; break ;;
            *) echo "invalid response" ;;
        esac
    done
    let ans="$n1 $op $n2"
    printf "%s %s %s = %s\n\n" "$n1" "$op" "$n2" "$ans"
done
