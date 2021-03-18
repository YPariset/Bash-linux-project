#!/bin/bash

cat $1 | while read line

do

type=$(echo $line | awk '{print ($3)}')
msg=$(echo $line | awk '{print ($4$5$6$7$8$9$10)}')
date=$(echo $line | awk '{print ($1" "$2)}')
echo {\"type\":\"$type\"','"\"msg\":\"$msg\",\"time\":\"$date\""}

done
