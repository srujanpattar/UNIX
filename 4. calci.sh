#!/bin/bash
echo "Enter your choice:\n1. Add\n 2.Sub\n 3.Mul\n 4.Div"
read ch
echo "Enter two opernads: "
read a
read b
case $ch in 
	1) result=$(expr $a + $b)
		echo "$result"
		;;
	2) result=$(expr $a - $b)
		echo "$result"
		;;
	3) result=$(expr $a \* $b)
		echo "$result"
		;;
	4) if [ $b -eq 0 ]; then
		echo "enter $b as non-zero num"
	else 	
		result=$(expr $a / $b)
		echo "$result"
	fi
	;;
	*) echo "Enter valid choice: "
	;;

esac

