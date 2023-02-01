#!/bin/bash

# sudo -u www-data sh -c " \
# wp core download --locale=en_US && \
# wp config create --dbname=1 --dbhost=1 --dbuser=1 --dbpass=1 && \
# wp core install --url=1E --title=1 --admin_user=1 --admin_password=1 --admin_email=1 && \
# wp user create 1 2 --role=author --user_pass=1
# "
mkdir /run/php;
touch /run/php/php7.3-fpm.pid;

if [ ! -f /var/www/html/wp-config.php ]; then

mkdir var/www/html
mv /wordpress/* /var/www/html/ && \
chown -R www-data:www-data /var/www/html/ && \
# rm -rf / wordpress latest.tar.gz
# rm /var/www/html/wp-config-sample.php

# wp-cli 설치 가이드
# https://ko.linux-console.net/?p=3066#gsc.tab=0
mv /var/www/wp-config.php /var/www/html/
# wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# chmod +x wp-cli.phar
# cp wp-cli.phar /usr/bin/wp
# cd /var/www/html
# wp core install --allow-root

fi

# ip
# 172.17.0.2 maria
# 172.23.0.2 wordpress

# exec /usr/sbin/php-fpm7.3 -F

exec "$@"

