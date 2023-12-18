#!/bin/bash

echo "after_install.sh start..."

SOURCE_DIR=/var/codedeploy/ec-cube/
TARGET_DIR=/home/ec-cube/

# rsync source
rsync -vaW --delete-after \
    --exclude "*.env" \
    --exclude "/data" \
    --exclude "/data/" \
    --exclude "/cache" \
    --exclude "/cache/" \
    --exclude "/logs" \
    --exclude "/logs/" \
    --exclude "/tmp" \
    --exclude "/tmp/" \
    --exclude "docker-compose.*" \
    --exclude "env.ini" \
    --exclude "*.pid" \
    --exclude "*.git" \
    --exclude "*.log" \
    --exclude "*.idea" \
    --exclude "*.settings" \
    $SOURCE_DIR $TARGET_DIR

# Application ディレクトリに移動
cd $TARGET_DIR

# Composerを使用して依存関係をインストール
composer install --no-interaction --prefer-dist --optimize-autoloader

# マイグレーション
# php artisan migrate --force

# キャッシュのクリア
# php artisan cache:clear

echo "after_install.sh end."

