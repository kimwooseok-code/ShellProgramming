#!/bin/bash

if [ $# -ne 2 ] ; then
    echo "Usage: $0 <pattern> <filename>"
    exit 1
fi
PATTERN="$1"
FILENAME="$2"

grep -q "$PATTERN" "$FILENAME" 
if [ $? -eq 0 ] ; then 
    echo " [  OK  ] $FILENAME에서 $PATTERN 패턴을 찾았습니다. "
else
    echo " [ FAILE] $FILENAME에서 $PATTERN 패턴을 못 찾았습니다. "
fi 

