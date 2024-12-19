#!/bin/bash

echo "Enter the integer value for $num3"

read num3

echo "Enter the integer valuve for $num4"

read num4

Sub=`expr $num3 - $num4`

echo "The Sunstration of $num3 and $num4 is $Sub"

Div=`expr $num3 / $num4`

echo "The Dividion of $num3 and $num4 is $Div"
