#!/bin/bash


for i in $(cat /test/file1)
do
	echo -n $i
done
