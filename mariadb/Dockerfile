FROM debian:buster

RUN apt update -y && apt upgrade -y && \
	apt install -y mariadb-server procps vim

EXPOSE 3306

COPY ./tools/script.sh /var/www/
# COPY ./tools/db.sql /var/www/
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
# COPY conf/my.cnf /etc/mysql/


# RUN service mysql start && mysql < /var/www/db.sql
RUN chmod +x /var/www/script.sh

#ENTRYPOINT [ "/var/www/script.sh" ]

#### nh
ENTRYPOINT	["bash"]
CMD	["/var/www/script.sh", "mysqld"]

####
#CMD [ "mysqld" ]

# CMD tail -f /dev/null
