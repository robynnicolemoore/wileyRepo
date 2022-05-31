#!/bin/sh

#Getting numbers
echo "Please put in 5-10 numbers"
read input
while [[ ! $input =~ [0-9] ]]
do
	echo "Please only put in numbers"
	exit 1
done
echo $input > activity8.txt

echo "Would you like to put in more numbers? Type Y for Yes or N for No."
read answer

case $answer in
	Y)
		echo "Please put in more numbers"
		read numbers
		echo $numbers>>activity8.txt
		;;
	N)
		echo "Okay. Proceeding"
		;;
	*)
		continue
		;;
esac

#Make array
declare -a arr
while read -r line
do arr+=$line
done<activity8.txt


echo ${arr[@]}

#Find product
product=1
for i in ${arr[@]}
do
	product=$((product*$i))
done
echo $product

#Find sum
sum=0
for i in ${arr[@]}
do
	sum=$((sum+$i))
done
echo $sum

#Find average
length=$(cat activity8.txt | wc -w)
average=$(($sum/$length))
echo $average
