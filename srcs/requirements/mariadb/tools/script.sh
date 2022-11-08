#!/bin/sh

cat <<E >query
USE mysql;
FLUSH PRIVILEGES;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' identified by '$SQLROOTPASS' WITH GRANT OPTION ;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' identified by '$SQLROOTPASS' WITH GRANT OPTION ;

SET PASSWORD FOR 'root'@'localhost'=PASSWORD('$SQLROOTPASS') ;
DROP DATABASE IF EXISTS test ;
CREATE DATABASE wordpress;
FLUSH PRIVILEGES ;

GRANT ALL PRIVILEGES ON *.* TO '$SQLUSR'@'%' identified by 'SQLUSERPASS' WITH GRANT OPTION ;
GRANT ALL PRIVILEGES ON *.* TO '$SQLUSR'@'localhost' identified by 'SQLUSERPASS' WITH GRANT OPTION ;
SET PASSWORD FOR '$SQLUSR'@'localhost'=PASSORD('SQLUSERPASS') ;
FLUSH PRIVILEGES ;
E

mysqld --user=mysql --bootstrap --datadir=/var/lib/mysql < query

rm -rf query

mysqld --user=mysql --console --skip-networking=0