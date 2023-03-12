#!/bin/bash
password="nelson"
user="nelson"
ips=( 172.31.84.224  172.31.26.76 )
for i in ${ips[@]}; do
sshpass -p "$password" scp  etech.log $user@$i:/tmp
done
