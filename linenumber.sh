#!/bin/bash

echo "Enter the file name to desplay the line with line numbers"

read file_name
n=0
echo "Printing all the lines with line numbers"

while read line 
  do 
     n=`expr $n + 1`

     echo "$n  $line"
 

    done < $file_name
