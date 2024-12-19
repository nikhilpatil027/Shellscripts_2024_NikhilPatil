#!/bin/bash
n=0

while [ $n -eq 0 ]
do 

   cpu_usage=`top -b -n 1 | head -8 | tail -1 | awk -F " " '{print $(NF-3)}' | cut -d "." -f1`

   time=`top -b -n 1 | head -8 | tail -1 | awk -F " " '{print $(NF-1)}'`

   #echo "$cpu_usage"
   #echo "$time"

      if [ $cpu_usage -gt 80 ]
       then
        echo "The cpu value reachesthreshold value,Please cleanup the memory"
        echo "Memory reached threashold value as present value is $cpu_usage at time $time" | mail -s "Cleanup memory" nikhilrpatil027@gmail.com
       break
      else 
	echo "cpu usage is normal" >> newfile
      fi
      sleep 2
done
