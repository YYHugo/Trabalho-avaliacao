#!/bin/bash
#use ./compress.sh -images

mkdir decompjpg

for i in "$@"
do
	echo "$i"
	time(convert "./compressjpg/$i*" "./decompjpg/$i.tif")
done
