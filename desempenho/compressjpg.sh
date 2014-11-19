#!/bin/bash
#use ./compress.sh -quality -images

mkdir compressjpg
cd compressjpg

for i in "$@"
do
	echo "$i"
	time(convert "../$i" -quality "$1" "$i.jpg")
done
