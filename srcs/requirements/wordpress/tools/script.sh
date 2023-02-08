#!/bin/bash


# -f: 파일이 디렉터리나 일반파일인지 확인한다.
#필요해?
if [ ! -f /var/www/html/wp-config.php ]; then

mkdir -p /run/php;
touch /run/php/php7.3-fpm.pid;
mkdir -p var/www/html
mv /wordpress/* /var/www/html/ && \

chown -R www-data:www-data /var/www/html/ && \
mv /var/www/wp-config.php /var/www/html/

# wp-cli 설치 가이드
# https://ko.linux-console.net/?p=3066#gsc.tab=0
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
cp wp-cli.phar /usr/bin/wp
cd /var/www/html
# wp core install 옵션
# https://developer.wordpress.org/cli/commands/core/install/
wp core install --allow-root --url="$DOMAIN_NAME" --title="$WORDPRESS_TITLE" --admin_user="$WORDPRESS_ADMIN_USER" --admin_password="$WORDPRESS_ADMIN_USER_PWD" --admin_email="$WORDPRESS_ADMIN_EMI"
wp user create --allow-root "$WORDPRESS_USER" "$WORDPRESS_USER_EMI" --user_pass="$WORDPRESS_USER_PWD"
echo "wp core install end!"
fi

exec "$@"
