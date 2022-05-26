#!/bin/sh

RAN_NUM=`shuf -i 1-50 -n5`
LUCKY_NUM=`shuf -i 1-10 -n1`
DATE=`date +%m.%d.%Y`

echo $RAN_NUM $LUCKY_NUM > /home/ec2-user/wileyRepo/lottery.txt+$DATE
echo "Enter your lottery numbers"
read input
echo $input > /home/ec2-user/wileyRepo/lotteryguesser.txt+$DATE

declare -a array1

while read -r line
do
	array1+=("$(echo "$line")")
done</home/ec2-user/wileyRepo/lottery.txt+$DATE

for i in "${array1[@]}"
do
	echo "$i"
done

declare -a array2

while read -r line
do arrya2+=("$(echo "$line")")
done</home/ec2-user/wileyRepo/lotteryguesser.txt+$DATE

for i in "${array2[@]}"
do
	echo "$i"
done

