FROM alpine

RUN apk update

RUN apk add mariadb mariadb-client

RUN addgroup mysql mysql

RUN mkdir /run/mysqld

RUN chown -R mysql:mysql /run/mysqld

RUN chown -R mysql:mysql /var/lib/mysql

RUN mysql_install_db --user=mysql --ldata=/var/lib/mysql

COPY ./tools/script.sh .

RUN chmod +x ./script.sh

CMD [ "./script.sh" ]