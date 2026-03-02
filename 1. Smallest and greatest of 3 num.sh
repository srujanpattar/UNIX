#!/bin/bash
echo "Enter three numbers: "
read x
read y
read z
if [ $x -ge $y ] && [ $x -ge $z ]; then
       echo "$x is greatest of three numbers"
elif [ $y -ge $z ] && [ $y -ge $x ]; then
       echo "$y is greatest of three numbers"
else
 echo "$z is greatest of three numbers"
fi

if [ $x -le $y ] && [ $x -le $z ]; then
	echo "$x is smallest of three numbers"
elif [ $y -le $x ] && [ $y -le $z ]; then
	echo "$y is the smallest of three numbers"
else 
	echo "$y is smallest of three numbers"
fi
