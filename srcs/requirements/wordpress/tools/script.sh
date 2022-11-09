#! /bin/sh

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

wp core download --allow-root

wp --allow-root core config --dbhost=mariadb --dbname=wordpress --dbuser=root --dbpass=$SQLROOTPASS

chmod 644 /var/www/html/wp-config.php

wp --allow-root core install --url=localhost --title="inceptin" --admin_user=$WPUSR --admin_email=$WPEMAIL

chown -R www-data:www-data /var/www/html/

exec php-fpm7.3  -F -R