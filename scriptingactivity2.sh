#!/bin/sh

DATE=`date +%Y.%m.%d`

for `file` in `ls` /home/ec2-user/wileyRepo/Activity2Files
do mv $file $file$DATE
done

