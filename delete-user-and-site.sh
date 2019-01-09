#!/bin/bash
# Скрипт принимает 2 переменные: $1 - user $2 - domain

rm -r /var/www/$2 && rm /etc/apache2/sites-available/$2.conf && a2dissite $2.conf && deluser --remove-home $1 && sudo service apache2 restart

# удалим каталог сайта
# удалим файл конфигурации
# отключим виртуальный хост
# удалим юзера
# перезагрузим апач
