#!/bin/sh


while IFS="#" read -r question choices answer
do
	echo $question
	echo $choices
	echo "Please enter your answer (1=true, 2=false)"
	read input </dev/tty
	if (( $input==$answer ))
	then 
		echo "Muy bien"
	
	else 
		echo "Try again"
	fi
done <quizquestions.txt



