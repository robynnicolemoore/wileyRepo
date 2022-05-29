#!/bin/sh

echo "Put in a number in the form of a numeral"
read VAL1

while [[ ! $VAL1 =~ ^[0-9]+$ ]]
do
	echo "Please enter only numbers in the form of numerals"
	exit 1
done

echo "Put in another number in the form of a numeral"
read VAL2

while [[ ! $VAL2 =~ ^[0-9]+$ ]]
do
	echo "Please enter only numbers in the form of numerals"
	exit 1
done

if (( $VAL1 > $VAL2 ))
then
	echo "True"
else
	echo "False"
fi
echo "The numbers you put were $VAL1 and $VAL2"
DIFF=$(($VAL1-$VAL2))
echo "The difference between these two numbers is $DIFF"
