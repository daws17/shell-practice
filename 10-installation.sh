#!/bin/bash

USERID=$(id -u)
if [ $USERID -NE 0 ] ; then
    echo "error::please run this script with root privelage"
    exit1
fi