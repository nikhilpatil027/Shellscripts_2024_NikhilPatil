#!/bin/bash

echo "Enter the path to find the it is a file or directory or link"

read file

if [ -f $file ]
 then
  echo "The given path is a file"

elif [ -d $file ]
  then 
   echo "The given path is directory" 

elif [ -L $file ]
   then
    echo "The given path is link"
else
  echo "The given path not found"

fi
