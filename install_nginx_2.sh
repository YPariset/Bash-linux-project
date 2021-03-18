#!/bin/bash

cp /Bash-linux-project/html_root/index.html /var/www/html/ && echo "nohup /usr/sbin/nginx &" >> /workspace/log_server/startup.sh
