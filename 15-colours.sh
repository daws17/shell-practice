#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USERID=$(id -u)
if [ $USERID -ne 0 ] ; then
    echo "ERROR::please run this script with root privelage"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ] ; then
       echo -e "installing $2 ...$G is FAILURE $N"
       exit 1
    else
       echo -e "installing $2 ...$g is SUCCESS $n"
    fi
}

dnf list installed nginx
if [ $? -ne 0 ] ; then
   dnf install nginx -y
   VALIDATE $? "nginx"
else
    echo "nginx already exits ....$G skipping $N"
fi

dnf list installed mysql
if [ $? -ne 0 ] ; then
   dnf install mysql -y
   VALIDATE $? "mysql"
else
    echo "mysql already exits ....$G skipping $N"
fi

dnf list installed python3
if [ $? -ne 0 ] ; then
   dnf install python3 -y
   VALIDATE $? "python3"
else
    echo "python3 already exits .....$G skipping $N"
fi