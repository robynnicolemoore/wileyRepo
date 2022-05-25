#!/bin/sh

u="$USER"
echo "User name $u"
date=`(date +%m.%d.%Y)`
echo "Date $date"
time=`(date +%T)`
echo "Time $time"
directory=`pwd`
echo "Current directory: $directory"
filecount=`ls | wc -l`
echo "Number of files: $filecount"
biggestfile=`du $directory | sort -n -r | head -1`
echo "Biggest file: $biggestfile"

