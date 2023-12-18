#!/bin/bash

echo "after_install.sh start..."

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
    /var/codedeploy/ec-cube/ /home/ec-cube/

# Application ディレクトリに移動
cd /var/www/html/

# Composerを使用して依存関係をインストール
composer install --no-interaction --prefer-dist --optimize-autoloader

# マイグレーション
# php artisan migrate --force

# キャッシュのクリア
# php artisan cache:clear

echo "after_install.sh end."

