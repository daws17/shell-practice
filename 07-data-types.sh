#!/bin/bash

#everything in shell considered as string
NUMBER1=100
NUMBER2=200

#forcommand excute syntax is "$()"
sum=$((NUMBER1+NUMBER2))

echo "sum is : ${sum}"