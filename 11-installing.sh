#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ] ; then
    echo "ERROR::please run this script with root privelage"
    exit 1
fi
dnf install mysql -y
if [ $? -ne 0 ] ; then
    echo "ERROR::installing mysql is failure"
    exit 1
else
    echo "installing mysql is sucess"
fi

dnf install nginx -y
if [ $? -ne 0 ] ; then
    echo "ERROR::installing nginx is failure"
    exit 1
else
    echo "installing nginx is sucess"
fi

dnf install mongodb-mongosh -y
if [ $? -ne 0 ] ; then
    echo "ERROR::installing mongodb-mongosh is failure"
    exit 1
else
    echo "installing mongodb-mongosh is sucess"
fi