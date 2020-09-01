#!/bin/bash/ -x
currentdate=$(date +'%d%m%Y')
for file in `ls *.log.1`
do
	filename=`echo $file | awk -F. '{print $1}'`
	newfilename=`echo "$filename-$currentDate.log"`
	mv $file $newfilename
done
