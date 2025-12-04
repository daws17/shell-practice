#!bin/bash
 
NUMBER=$1

if [ $NUMBER -lt 10 ]; then
    echo "given number $NUMBER is less then 10
else
    echo "given number $NUMBER is greater then or equal to 10"
fi