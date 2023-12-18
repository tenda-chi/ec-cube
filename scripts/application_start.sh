#!/bin/bash

LOG_FILE=/tmp/codedeploy.log
echo "application_install.sh start..." | tee -a $LOG_FILE
date | tee -a $LOG_FILE

# Apacheサーバーの起動
# sudo systemctl start httpd

echo "application_install.sh end." | tee -a $LOG_FILE
