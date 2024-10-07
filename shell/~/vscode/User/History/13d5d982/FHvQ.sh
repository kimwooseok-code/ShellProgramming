#!/bin/bash

INPUTFILE=/share/output.txt
OUTPUTFILE=/share/output.csv

for LINE in $(cat $INPUTFILE)
do
    echo "$LINE"
done