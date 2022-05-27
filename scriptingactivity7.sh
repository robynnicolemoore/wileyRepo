#!/bin/sh


for i in {1..10}
do
while IFS="#" read -r question choices answer <quizquestions.txt
do
	echo $question
	echo $choices
	echo "Please enter your answer (1=true, 2=false)"
	read input
	if (( $input==$answer ))
	then 
		echo "Muy bien"
	
	else 
		echo "Try again"
	fi
done <quizqquestions.txt



