#!/bin/bash

LOG_FILE=/tmp/codedeploy.log
echo "application_stop.sh start..." | tee -a $LOG_FILE
date | tee -a $LOG_FILE

# sudo systemctl stop httpd

echo "application_stop.sh end." | tee -a $LOG_FILE
