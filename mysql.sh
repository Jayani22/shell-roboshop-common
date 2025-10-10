#!/bin/bash

source ./common.sh

check_root
app_name=mysql

dnf install mysql-server -y &>>LOG_FILE
VALIDATE $? "Installing MYSQL server"

systemctl enable mysqld &>>LOG_FILE
VALIDATE $? "Enabling MYSQL server"

systemctl start mysqld &>>LOG_FILE
VALIDATE $? "Starting MYSQL server"

mysql_secure_installation --set-root-pass RoboShop@1 &>>LOG_FILE
VALIDATE $? "setting up Root Password"

print_total_time