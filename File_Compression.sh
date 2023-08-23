#!/bin/bash

#Path on which Current script is going to work
echo "Hey this is FluxBee Here,"
echo "This is my Shell Projects Which Compress The file greater than Specific Size in a User Provided Directory"


read  -p "Enter the Directory you Want to work On : " BASE
DEPTH=1 #how many subdirectory we are going to check
read -p "Enter the Threshold over which you want to the file to be compressed : " size

if [ ! -d $BASE ]
	then
	echo " Target Directory Does Not Exist"
	exit 1
fi

if [ ! -d $BASE/Archive ]
	then
	mkdir $BASE/Archive
fi

for i in `find $BASE -maxdepth $DEPTH -type f -size +$size`
	do
		gzip $i || exit 1
		mv $i.gz $BASE/Archive || exit 1
done	