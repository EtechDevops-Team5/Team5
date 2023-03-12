#!/bin/bash
#group project 2 mount a disk
sudo mkdir /mnt/team3project2
sudo mkfs.ext2 /dev/xvdf
sudo mount /dev/xvdf /mnt/team3project2
echo "/dev/xvdg /mnt/team3project ext2 default 0 1" | sudo tee -a /etc/fstab
lsblk
