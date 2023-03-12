#!/bin/bash
#Group project 2
echo -n " Please Enter the filename: "
read filename

cat /var/log/kern.log

group3members=( "gerald agbonye" "pretei lemo" "benoit nyobe" "ismail sanni" "henry forson" "olisa n" "odile domingo" )

for i in ${group3members[@]}; 
do
  echo “$i” >> team5group3pipeline

  ip=( 172.31.84.224 )
scp -i key team5group3pipeline ubuntu@$ip:/tmp
done
