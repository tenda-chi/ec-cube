#!/bin/bash

LOG_FILE=/tmp/codedeploy.log
echo "validate_service.sh start..." | tee -a $LOG_FILE
date | tee -a $LOG_FILE

# ヘルスチェック系の処理

echo "validate_service.sh end." | tee -a $LOG_FILE
