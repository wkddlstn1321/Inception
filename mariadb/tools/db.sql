CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'insjang'@'%' IDENTIFIED BY 'insjang1234';
GRANT ALL PRIVILEGES ON wordpress.* TO 'insjang'@'%' IDENTIFIED BY 'insjang1234';