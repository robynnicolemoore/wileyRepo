#!/bin/sh

RAN_NUM=`shuf -i 1-50 -n5`
LUCKY_NUM=`shuf -i 1-10 -n1`
DATE=`date +%m.%d.%Y`

echo $RAN_NUM $LUCKY_NUM > /home/ec2-user/wileyRepo/lottery.txt+$DATE
echo "Enter your lottery numbers"
read input
echo "The numbers you put were $input"


diff [-C]  $input /home/ec2-user/wileyRepo/lottery.txt+$DATE
echo "$diff"
