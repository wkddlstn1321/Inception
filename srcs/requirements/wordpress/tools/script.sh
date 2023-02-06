#!/bin/bash

# sudo -u www-data sh -c " \
# wp core download --locale=en_US && \
# wp config create --dbname=1 --dbhost=1 --dbuser=1 --dbpass=1 && \
# wp core install --url=1E --title=1 --admin_user=1 --admin_password=1 --admin_email=1 && \
# wp user create 1 2 --role=author --user_pass=1
# "

if [ ! -f /var/www/html/wp-config.php ]; then

mkdir -p /run/php;
touch /run/php/php7.3-fpm.pid;

mkdir -p var/www/html
mv /wordpress/* /var/www/html/ && \

chown -R www-data:www-data /var/www/html/ && \ ####
# rm -rf / wordpress latest.tar.gz
# rm /var/www/html/wp-config-sample.php
mv /var/www/wp-config.php /var/www/html/

# wp-cli 설치 가이드
# https://ko.linux-console.net/?p=3066#gsc.tab=0
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
cp wp-cli.phar /usr/bin/wp
echo "cd /var/www/html"
cd /var/www/html
# wp core install 옵션
# https://developer.wordpress.org/cli/commands/core/install/
echo "wp core install start..."
wp core install --allow-root --url="$DOMAIN_NAME" --title="$WORDPRESS_TITLE" --admin_user="$WORDPRESS_ADMIN_USER" --admin_password="$WORDPRESS_ADMIN_USER_PWD" --admin_email="$WORDPRESS_ADMIN_EMI"
wp user create --allow-root "$WORDPRESS_USER" "$WORDPRESS_USER_EMI" --user_pass="$WORDPRESS_USER_PWD"
echo "wp core install end!"
fi

# ip
# 172.17.0.2 maria
# 172.23.0.2 wordpress

# exec /usr/sbin/php-fpm7.3 -F

exec "$@"

