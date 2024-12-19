#!/bin/bash

service_name="bash jenkins"

for i in $service_name
  do
    ps -C $i
    if [ $? -ne 0 ]
    then
      echo $i >> file11
    fi
done

if [ -s file11 ]

then
  cat file11 | mail -s "Services not running" nikhilrpatil027@gmail.com
  rm -rf file11
fi

