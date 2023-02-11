FROM debian:buster

RUN apt-get update -y && apt-get -y install \
php7.3 php-fpm php-cli wget php-mysql vim && \
wget https://wordpress.org/latest.tar.gz && \
tar -xvf latest.tar.gz && \
mkdir -p /run/php && touch /run/php/php7.3-fpm.pid

EXPOSE 9000

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/
COPY ./tools/wp-config.php /var/www/
COPY ./tools/script.sh /var/www/

RUN chmod +x /var/www/script.sh

ENTRYPOINT [ "/var/www/script.sh" ]

CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]