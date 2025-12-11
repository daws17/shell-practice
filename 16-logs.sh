#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/Var/log/shell-script"
SCRIPT_NAME=$ ( echo $0 | cut -d "." -f1)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER
echo "script started excuted at : $(date)"

if [ USERID -ne 0 ];then
    echo "ERROR:: please run this script with root privilage"
    exit1
fi

VALIDATE () {
    if  [ $1 -ne 0 ];then
        echo -e "installing $2....$G SUCCESS $N"
    else
        echo -e "installing $2.....$R FAILED $N"
    fi
}

dnf list installed mysql
if [ $? -ne 0 ];then
    dnf install mysql -y
    VALIDATE $? "mysql"
else
    echo -e "mysql is already exit......$Y skipping $N"
fi