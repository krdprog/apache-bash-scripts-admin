#!/bin/bash
# Скрипт принимает 2 переменные: $1 - user $2 - domain

adduser $1 &&
mkdir -p /var/www/$2/public_html &&
chown -R $1:$1 /var/www/$2/public_html &&
echo "hello web" >> /var/www/$2/public_html/index.html &&

echo "<VirtualHost *:80>

ServerAdmin your@email.com
ServerName $2
ServerAlias www.$2
DocumentRoot /var/www/$2/public_html

<Directory /var/www/$2/public_html>
AllowOverride All
</Directory>

ErrorLog ${APACHE_LOG_DIR}/error.log
CustomLog ${APACHE_LOG_DIR}/access.log combined

</VirtualHost>" >> /etc/apache2/sites-available/$2.conf &&
a2ensite $2.conf && sudo service apache2 restart

exit 0
