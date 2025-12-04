#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ] ; then
    echo "ERROR::please run this script with root privelage"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ] ; then
       echo "ERROR::installing $2 is failure"
       exit 1
    else
       echo "installing $2 is SUCCESS"
    fi
}

dnf install Nginx -y
VALIDATE $? "Nginx"

dnf install MySQL -y
VALIDATE $? "MySQL"

dnf install python3 -y
VALIDATE $? "Python3"