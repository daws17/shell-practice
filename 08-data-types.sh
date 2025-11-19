#!/bin/bash

#everything in shell considered as string
NUMBER1=100
NUMBER2=200
NAME=devops

#forcommand excute syntax is "$()"
sum=$((NUMBER1+NUMBER2+NAME))

echo "sum is : ${sum}"

LEADERS=("modi" "trump" "putin")

echo "All leaders: ${LEADERS [@]}"
echo "First leader: ${LEADERS [0]}"