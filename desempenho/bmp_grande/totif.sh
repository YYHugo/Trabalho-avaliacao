#!/bin/bash

mkdir tif
cd tif

for i in "$@"
do
	echo "$i"
	time(convert "../$i" "$i.tif")
done
