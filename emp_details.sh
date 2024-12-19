#!/bin/bash

echo "Enter the file name to read the employee details"
read file_name
#echo "enter the department name"
#read department

echo "Below are the employees who are working in devops"

while read line
  do 
  emp_department=`echo "$line" | awk -F " " '{print $3}'`

  if [ $emp_department == devops ]
    then 
      echo $line | awk -F " " '{print $1,$2}'
  
fi

done < $file_name
