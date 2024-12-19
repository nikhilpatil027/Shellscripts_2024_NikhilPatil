#!/bin/bash

echo "enter the 1st integer value"
read num1
echo "enter the 2nd integer value"
read num2
echo "enter the 3rd integer value"
read num3

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
 then
  echo "$num1 is grater then $num2 and $num3"

elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]
 then 
  echo "$num2 is grater then $num1 and $num3"

else [ $num3 -gt $num1 ] && [ $num3 -gt $num2 ] 
   echo "$num3 is grater then $num1 and $num2"
fi
