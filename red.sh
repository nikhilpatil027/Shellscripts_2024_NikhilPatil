#!/bin/bash
echo "Enter the file to read the price"

read file_name

echo "Below are the vechiles which has the red colour"
while read line
 do 
   colour=`echo "$line" | awk -F " " '{print $2}'`

 if [ $colour == 'red' ]
  then 
      echo "$line" | awk -F " " '{print $1}'
  fi

done < $file_name
