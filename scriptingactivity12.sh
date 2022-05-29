#!/bin/sh

cmp $1 $2
echo $cmp

if [ !  -f $1 ] || [ ! -f $2 ]
then
	echo "One of these files could not be found"
	exit 1
else
	continue
fi

if diff $1 $2
then
	echo "These files are the same"
else
	echo "These files are different. See message above"
fi


