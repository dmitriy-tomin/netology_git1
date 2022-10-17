#!/bin/bash

function f_input_1() {
   echo "Enter backup dir for database"
   read db_dir
   echo "Enter sql_user"
   read sql_user
   echo "Enter sql pass"
   read sql_pass
echo "Login with $sql_user and backuping to $db_dir"
}

function f_input_2() {
   echo "Enter backup dir for RR"
   read rr_dir
   echo "Enter rr_user"
   read rr_user
   echo "Enter rr pass"
   read rr_pass
echo "Login with $rr_user and backuping to $rr_dir"
}

echo "Enter what do you want:"
echo "1 - create a backup sql"
echo "2 - create a backup rr" #dev_feature
read number

if ((number == 1)) 
then
   f_input_1
elif ((number == 2))
then
   f_input_2
else
    echo "wrong"
fi 
