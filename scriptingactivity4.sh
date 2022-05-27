#!/bin/sh

echo "Type in your passsword"
read input
PW_LENGTH=$(echo ${#input})
PW=$input

if (( $PW_LENGTH > 8 )) &&  [[ $PW == *[[:digit:]]* ]] && [[ $PW =~ [A-Z] ]]
then 
	echo "This is a strong password"

else
	echo "This is a weak password"

fi


