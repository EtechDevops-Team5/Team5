#!/bin/bash
ips=( 172.31.84.224 172.31.26.76 )
for i in ${ips[@]}; do
scp -i key scptest.log ubuntu@$i:/tmp
done 
