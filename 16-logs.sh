#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/Var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER
echo "script started excuted at : $(date)" |tee -a $LOG_FILE

if [ $USERID -ne 0 ];then
    echo "ERROR:: please run this script with root privilage"
    exit1
fi

VALIDATE () {
    if  [ $1 -ne 0 ];then
        echo -e "installing $2....$R FAILED $N" |tee -a $LOG_FILE
    else
        echo -e "installing $2.....$G SUCCESS $N" |tee -a $LOG_FILE
    fi
}

dnf list installed mysql &>> $LOG_FILE
if [ $? -ne 0 ];then
    dnf install mysql -y &>> $LOG_FILE 
    VALIDATE $? "mysql"
else
    echo -e "mysql is already exit......$Y skipping $N" |tee -a $LOG_FILE
fi

dnf list installed nginx &>> $LOG_FILE
if [ $? -ne 0 ];then
    dnf install nginx -y &>> $LOG_FILE 
    VALIDATE $? "nginx"
else
    echo -e "nginx is already exit......$Y skipping $N" |tee -a $LOG_FILE
fi

dnf list installed python3 &>> $LOG_FILE
if [ $? -ne 0 ];then
    dnf install python3 -y &>> $LOG_FILE 
    VALIDATE $? "python3"
else
    echo -e "python3 is already exit......$Y skipping $N" |tee -a $LOG_FILE
fi