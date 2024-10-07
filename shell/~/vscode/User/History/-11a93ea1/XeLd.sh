#!/bin/bash


for i in $(cat /test/file1)
do
	DNS=$(echo -n $i)
done
