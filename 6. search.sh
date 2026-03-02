#!/bin/bash
echo "Enter the str: "
read str
if [ -z "$str" ]; then
	echo "Invalid string"
else
	echo "Length of string is: "
	echo `expr "$str" : '.*'`
fi

echo "Enter str to search: "
read ch
res=`expr "$str" : "[^$ch]*$ch"`
if [ "$res" -ne 0 ]; then
	echo "$res"
else 
	echo "Char is not in str"
fi

