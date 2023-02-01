#!/bin/bash
service mysql start
# echo -e "\n===== 데이터베이스 리스트 ====="
# mysql -uroot -p$MARIADB_ROOT_PASSWORD -e "SHOW DATABASES"

# echo -e "\n===== 유저 리스트 ====="
# mysql -uroot -p$MARIADB_ROOT_PASSWORD -e "SELECT host,user from mysql.user";

# echo -e "\n===== 권한 ====="
# mysql -uroot -p$MARIADB_ROOT_PASSWORD -e "SHOW GRANTS FOR 'taeheonk'@'%'";


# 이 조건문이 맞을까?
# if [ ! -d /var/lib/mysql/$MARIADB_DATABASE ]; then
# 	echo "initailizing..."

# 	# 에러 로그 기록을 위한 커맨드
# 	touch /var/lib/mysql/error.log
# 	chown mysql:mysql /var/lib/mysql/error.log


# 	# mysqladmin -u root password $MARIADB_ROOT_PASSWORD
# 	mysql -uroot -p$MARIADB_ROOT_PASSWORD <<- EOSQL
# 		SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$MARIADB_ROOT_PASSWORD');
# 		CREATE DATABASE IF NOT EXISTS $MARIADB_DATABASE;
# 		CREATE USER IF NOT EXISTS '$MARIADB_USER'@'%' IDENTIFIED BY '$MARIADB_PASSWORD';
# 		GRANT ALL PRIVILEGES ON $MARIADB_DATABASE.* TO '$MARIADB_USER'@'%';
# 		FLUSH PRIVILEGES;
# 	EOSQL
# fi

# mysqladmin -uroot -p$MARIADB_ROOT_PASSWORD shutdown

exec "$@"

# password 확인
# mysql -uroot -e "SELECT host, user, password FROM mysql.user WHERE user='root'";
