#!/bin/bash

#Permet de creer une variable date et de la formater YYYY-MM-DD-HH-MM-SS  
varDate=$(date '+%Y-%m-%d-%H-%M-%S')

mkdir -p $2  
touch $2/log-$varDate.json

cat $1 | while read line 

do

type=$(echo $line | awk '{print ($3)}')
msg=$(echo $line | awk '{print ($4$5$6$7$8$9$10)}')
date=$(echo $line | awk '{print ($1" "$2)}'| cut -c2-20| date +%F" "%T)
echo {\"type\":\"$type\"','"\"msg\":\"$msg\",\"time\":\"$date\""} >> $2/log-$varDate.json

done
