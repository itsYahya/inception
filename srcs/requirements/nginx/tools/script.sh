#! /bin/sh

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=GB/ST=London/L=London/O=Global Security/OU=IT Department/CN=example.com"

addgroup -g 82 -S www-data 
adduser -u 82 -D -S -G www-data www-data

chown -R www-data:www-data /var/www/html
chmod -R 0755 /var/www/html

nginx -g "daemon off;"