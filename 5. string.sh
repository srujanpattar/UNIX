#/bin/bash
echo "Enter string: "
read str

if [ -z "$str" ]; then
	echo "Enter valid string"
else
	z=`expr "$str" : '.*'`
	echo "$z"
fi

if [ $z -ge 6 ]; then
	l=`expr "$str" : '\(...\).*'`
	x=`expr "$str" : '.*\(...\)'`
	echo "$l $x"
else
	echo "Length is less than 6"
fi
