#!/bin/sh

echo "Put in one number in the form of a numeral"
read input
VAL1=$input
echo "Put in another number in the form of a numeral"
read input2
VAL2=$input2

if (( $VAL1 > $VAL2 ))
then
	echo "True"
else
	echo "False"
fi
echo "The numbers you put were $VAL1 and $VAL2"
DIFF=$(($VAL1-$VAL2))
echo "The difference between these two numbers is $DIFF"
