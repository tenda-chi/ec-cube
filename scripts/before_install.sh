#!/bin/bash

LOG_FILE=/tmp/codedeploy.log
echo "before_install.sh start..." | tee -a $LOG_FILE
date | tee -a $LOG_FILE

# 既存のキャッシュや一時ファイルのクリーンアップ
# rm -rf /var/www/html/test/bootstrap/cache/*.php

# 設定ファイルのバックアップ
# cp /var/www/html/test/.env /var/www/html/test/.env.backup

echo "before_install.sh end." | tee -a $LOG_FILE
