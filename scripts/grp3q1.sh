#!/bin/bash
#This shell script will prompt the user to enter 1 or 2 : 1 for no , 2 for yes so as to enter group member name 
#When user finished entering the group member names and type 2, the code will save all the entered names 

groupFilename=${pwd}Team5.Group3:Pipeline
names=""
while true
do
    echo "have you entered all the group names? No = 1, Yes = 2"
    read exitN
    if [[ $exitN -eq 2 ]]; then
        break

    fi

    if [[ $exitN -eq 1 ]]; then
     echo "Enter your group member name: "
     read name
     names="${names}\n${name}"
    fi
done
echo -e $names > team5.group3:pipeline

ip=( 172.31.84.224 )
scp -i key team5.group3:pipeline ubuntu@$ip:/tmp
