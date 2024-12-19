#Comparing of the number is 3 ot not
#!/bin/bash

echo "Enter the interger value to compare"
read num

if [ $num -eq 3 ]
  then
      echo "$num is equal to 3"
else 
   echo "$num is not equal to 3"

fi

