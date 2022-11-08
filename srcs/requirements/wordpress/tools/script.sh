#! /bin/sh

wp --allow-root core config --dbhost=mariadb --dbname=wordpress --dbuser=root --dbpass=$SQLROOTPASS

wp --allow-root core install --url=localhost --title="inceptin" --admin_user=$WPUSR --admin_email=$WPEMAIL

chown -R www-data:www-data /var/www/

exec php-fpm7.3  -F -R