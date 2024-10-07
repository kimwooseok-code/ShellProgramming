#!/bin/bash

INPUTFILE=/share/output.txt
OUTPUTFILE=/share/output.csv

cat $INPUTFILE |  while read LINE
do
   echo $(echo "$LINE") | sed 's/ /,/'
done