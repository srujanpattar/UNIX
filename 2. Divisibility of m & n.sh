#!/bin/bash
echo "enter m and n: "
read m 
read n
y=$(expr $m % $n)
if [ $n -eq 0 ]; then
	echo "enter $n as non-zero number"
elif [ $y -eq 0 ]; then
	echo "$m is divisible by $n"
else
	echo "$m is not divisible by $n"
fi
