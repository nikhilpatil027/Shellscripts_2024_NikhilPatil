#!/bin/bash

echo "Enter the integer value to find wether it is devisible by 7 or not"

read num

if [ $num -ge 7 ] && [ $(($num % 7)) -eq 0 ]
  then
  echo "Given integer is divisible by 7"

   else
     echo "Given integer is not devisible by 7"


fi
