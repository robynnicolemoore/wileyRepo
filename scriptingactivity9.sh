#!/bin/sh

echo "Please enter a file name"
read filename
if [ -f "$filename" ]
then
	echo "This file exists"
else
	echo "This file is not found... Creating for you" > /home/ec2-user/$filename
echo "This file was not found. Check your home directory for it now."
fi


