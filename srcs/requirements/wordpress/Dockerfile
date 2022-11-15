FROM debian:buster

WORKDIR /var/www/html/

RUN chmod -R 777 /var/www/html

RUN mkdir /run/php/

COPY ./tools/script.sh .

RUN chmod +x ./script.sh

RUN apt update

RUN apt install -y php7.3 php-mysqli mariadb-client php-fpm wget

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d

CMD [ "./script.sh" ]
