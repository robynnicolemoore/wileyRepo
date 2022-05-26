#!/bin/sh

#rename things in a directory
DATE=`date +%Y%m%d`

for i in `ls /home/ec2-user/wileyRepo/Activity2Files`
do
echo $i $i$DATE >> NewFileNames
done



