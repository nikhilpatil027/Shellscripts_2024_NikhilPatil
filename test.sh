#!/bin/bash

mypassword="secret@123"

echo "Please enter the password"
read password

if [ $password == $mypassword ]
  then 

echo "Password matched"

else

echo "Password did not match"

fi
