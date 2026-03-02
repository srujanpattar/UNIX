#!/bin/bash
echo "Enter two files: "
read f1
read f2

if [ -e "$f1" -a -e "$f2" ]; then
	p1=`ls -l "$f1" | cut -c 2-10`
	p2=`ls -l "$f2" | cut -c 2-10`
	if [ "$p1" = "$p2" ]; then
		echo "have same permissions: $p1"
	else
		echo "$p1"
		echo "$p2"
	fi
else
	echo "Invalid files names"
fi
