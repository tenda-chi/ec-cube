#!/bin/bash

LOG_FILE=/tmp/codedeploy.log
echo "application_start.sh start..." | tee -a $LOG_FILE
date | tee -a $LOG_FILE

# Apacheサーバーの起動
# sudo systemctl start httpd

echo "application_start.sh end." | tee -a $LOG_FILE
