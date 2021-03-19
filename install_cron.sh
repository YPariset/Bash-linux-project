#!/bin/bash

# installation de cron
apt install cron && touch /etc/cron.d/hello-cron && chmod 0644 /etc/cron.d/hello-cron && crontab /etc/cron.d/hello-cron && cron

# ecrit notre crontab
crontab -l > mycron
#echo new cron into cron file
echo "* * * * * bash /Bash-linux-project/log_move.sh" >> mycron
#install new cron file
crontab mycron
rm mycron
