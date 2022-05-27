#!/bin/sh

echo "Please type the name of a file"
read file_name
if [ -f $file_name ]
then
	echo "This file already exists. Choose a different file."
	exit 1
else

echo "Please enter how many lines of text you want to write"
read input
echo `shuf -i 0-100 -n$input`>> /home/ec2-user/$file_name

fi

