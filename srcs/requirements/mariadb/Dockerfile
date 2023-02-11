FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y && \
	apt-get install -y mariadb-server vim

EXPOSE 3306

COPY ./tools/script.sh /var/www/
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

RUN chmod +x /var/www/script.sh

ENTRYPOINT [ "/var/www/script.sh" ]

CMD [ "mysqld" ]
