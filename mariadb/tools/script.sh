#!/bin/bash
service mysql start
mysql -uroot << EOSQL
	CREATE DATABASE IF NOT EXISTS $MARIADB_DB;
	CREATE USER IF NOT EXISTS '$MARIADB_USER'@'%' IDENTIFIED BY '$MARIADB_USER_PWD';
	GRANT ALL PRIVILEGES ON $MARIADB_DB.* TO '$MARIADB_USER'@'%' IDENTIFIED BY '$MARIADB_USER_PWD';
	FLUSH PRIVILEGES;
	ALTER USER '$MARIADB_ROOT_USER'@'localhost' IDENTIFIED BY '$MARIADB_ROOT_PWD';
EOSQL

echo "mysql restart...."
service mysql restart
echo "mysql restart!!!!"
bash
#exec "$@"
