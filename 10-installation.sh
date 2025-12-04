#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ] ; then
    echo "ERROR::please run this script with root privelage"
fi
dnf install mysql -y
if [ $? -ne 0 ] ; then
    echo "ERROR::installing mysql is failure"
else
    echo "installing mysql is sucess"
fi
