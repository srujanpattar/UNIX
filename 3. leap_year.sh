#!/bin/bash
echo "Enter year: "
read y

if [ $((y % 4)) -eq 0 ] && [ $((y%100)) -ne 0 ] || [ $((y % 400)) -eq 0 ];  then
    echo "It is a leap year"
else
    echo "It is not a leap year"
fi
