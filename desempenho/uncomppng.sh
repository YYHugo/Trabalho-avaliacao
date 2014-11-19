#!/bin/bash
#use ./compress.sh -images

mkdir decomppng

for i in "$@"
do
	echo "$i"
	time(convert "./compresspng/$i*" "./decomppng/$i.tif")
done
