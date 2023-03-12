#!/bin/bash
#Team 3 Group project 2 question 1
echo -n " Please Enter the filename: "
read filename

echo "gerald a. pretei l, benoit, ismail s, henry f, olisa n, odile d" > group3pipeline

sleep 5
sudo less /var/log/kern.log

ip=( 172.31.84.224 )
scp -i key group3pipeline ubuntu@$ip:/tmp
