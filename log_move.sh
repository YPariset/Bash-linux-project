#!/bin/bash

varFolderDate=$(date '+%Y_%m_%d')  

./log_dump.sh /workspace/log_server/server.log /var/www/html/log/$varFolderDate/ && ./log_filter.sh /var/www/html/log/$varFolderDate/*.log >> tmp.log && ./log_format.sh tmp.log /var/www/html/log/$varFolderDate/    
echo /var/www/html/log/$varFolderDate/*.log  >> /var/www/html/log/dump_list.txt 
echo /var/www/html/log/$varFolderDate/*.json  >> /var/www/html/log/json_list.txt

tar -cvzf log.tar.gz /var/www/html/log && mv log.tar.gz /var/www/html/log.tar.gzâ
