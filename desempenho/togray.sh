#!/bin/bash

mkdir grayscale
cd grayscale

for i in "$@"
do
	echo "$i"
	time(convert "../$i" -colorspace Gray "$i")
done
