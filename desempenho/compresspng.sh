#!/bin/bash
#use ./compress.sh -quality -images

mkdir compresspng
cd compresspng

for i in "$@"
do
	echo "$i"
	time(convert "../$i" -quality "$1" "$i.png")
done
