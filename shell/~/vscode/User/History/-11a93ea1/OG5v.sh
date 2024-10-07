#!/bin/bash

cat /test/file1 | tr '\n' '' 


:<<EOF
for i in $(cat /test/file1)
do

done
EOF