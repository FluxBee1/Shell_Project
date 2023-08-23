#!/bin/bash
FREESPACE=$(free -mt | grep "Total" | awk '{print$4}')
TOTAL=$(free -mt | grep "Total" | awk '{print$2}')
let x=100*FREESPACE/TOTAL;
if [[ $x -lt 40 ]]
then 
	echo "RAM IS GETTING FULL"
else
	echo "$x % RAM IS FREE"
fi

