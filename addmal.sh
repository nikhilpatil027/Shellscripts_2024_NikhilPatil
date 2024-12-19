#!/bin/bash

echo "Enter the integer value for num1"
read num1

echo "Enter the interger valuse for num2"
read num2

sum=`expr $num1 + $num2`

echo "The sum of $num2 and $num2 is $sum"

Prod=`expr $num1 \* $num2`

echo "The prod of $num1 and $num2 is $Prod"

