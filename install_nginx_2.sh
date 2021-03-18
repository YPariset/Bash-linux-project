#!/bin/bash


#copie le fichier index.html du dossier html_root dans le dossier le dossier html et lance le serveur nginx dans le script startup.sh
cp /Bash-linux-project/html_root/index.html /var/www/html/ && echo "nohup /usr/sbin/nginx &" >> /workspace/log_server/startup.sh
