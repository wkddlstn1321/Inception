FROM debian:buster

RUN apt update -y && apt -y install \
php7.3 php-fpm php-cli wget php-mysql php-mbstring php-xml sendmail vim && \
wget https://wordpress.org/latest.tar.gz && \
tar -xvf latest.tar.gz

EXPOSE 9000

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/
COPY ./tools/wp-config.php /var/www/
COPY ./tools/script.sh /var/www/

# WORKDIR /var/www/html/

RUN chmod +x /var/www/script.sh

ENTRYPOINT [ "/var/www/script.sh" ]

# CMD tail -f /dev/null

CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]