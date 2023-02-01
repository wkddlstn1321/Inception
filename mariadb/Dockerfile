FROM debian:buster

RUN apt update -y && apt upgrade -y && \
	apt install -y mariadb-server procps vim

EXPOSE 3306

COPY ./tools/db.sql /var/www/
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
# COPY conf/my.cnf /etc/mysql/


RUN service mysql start && mysql < /var/www/db.sql

# ENTRYPOINT [ "docker-entrypoint.sh" ]
CMD [ "mysqld" ]

# CMD tail -f /dev/null
