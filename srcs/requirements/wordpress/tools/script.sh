#! /bin/sh

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

wp core download --allow-root

wp --allow-root core config --dbhost=mariadb --dbname=wordpress --dbuser=root --dbpass=$SQLROOTPASS

chmod 777 /var/www/html/wp-config.php

wp --allow-root core install --url=$DOMAIN_NAME --title=$WPTITLE --admin_user=$WPUSR --admin_password=$WPPASS --admin_email=$WPEMAIL

wp --allow-root plugin install redis-cache --activate

sed -i "40i define( 'WP_REDIS_HOST', 'redis' );"			/var/www/html/wp-config.php
sed -i "42i define( 'WP_REDIS_PASSWORD', '$REDISPASS' );"	/var/www/html/wp-config.php

wp --allow-root redis enable

chown -R www-data:www-data /var/www/html/

exec php-fpm7.3  -F -R