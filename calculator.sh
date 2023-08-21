#!/bin/bash

function addition {
	sum=$(( $1+$2 ))
	echo "$sum"
}
function subtraction {
	subtraction=$(( $1+$2 ))
	echo "$subtraction"
}
function multiplication {
	multiplication=$(( $1 * $2 ))
	echo "$multiplication"
}
function divison {
	if [[ $2 -eq 0 ]]
	then 
		echo "Invalid Operand"
	else
	divison=$(( $1 / $2))
	echo "$divison" 
fi


}
echo "Enter First Number "
read x 
echo "Enter Second Number "
read y
echo "Enter the OPerand"
read c
case "$c" in 
	"+") addition x y
	;;
	"-") subtraction x y
	;;
	"*") multiplication x y
	;;
	"/") divison x y
	;;
esac
