#!/bin/bash

echo "Enter the interger value"

read num
Prod=1
while [ $num -gt 0 ]
do
  Prod=`expr $Prod \* $num`
  num=`expr $num - 1`
done

echo "The factorial of n numbers is $Prod"
