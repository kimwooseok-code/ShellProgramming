#!/bin/bash

INPUTFILE=/share/output.txt
OUTPUTFILE=/share/output.csv

cat $INPUTFILE |  while read ID NAME EMAIL PHONE ADDR
do
   echo $(echo "$LINE") | sed 's/ /,/g'
done