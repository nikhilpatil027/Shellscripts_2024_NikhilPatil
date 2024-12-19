#!/bin/bash
day=date '+%a'
echo "$day"
case $day in
        'Mon') find /home/ubuntu/devops -type f -mtime +10
                ;;
        'Tue') grep -l -r "file" /home/ubuntu/devops
                ;;
        'Wed') grep -L -r "file" /home/ubuntu/devops
                ;;
        'Thu') echo "Enter the path to check whether its a file or directory or link"
                read path
                if [ -L $path ]
                then
                echo " The given path is a Link "
                fi
                if [ -d $path ]
                then
                echo " The given path is a directory "
                fi
                if [ -f $path ]
                then
                echo " The given psth is a File "
                fi
                ;;
        'Fri') find /home/ubuntu/devops -type f -empty
                if [ $? -eq 1 ]
                then
                       echo " The empty files does not exists"
                fi
                ;;
        'Sat'|'Sun') echo "NO Tasks to run"
	       	;;

esac
