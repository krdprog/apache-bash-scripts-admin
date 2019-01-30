# apache-bash-scripts-admin
Apache bash scripts for administration: add user, add domain, delete user, delete domain.

**Автор:** @krdprog

## add-user-and-site.sh

Добавить в GNU/Linux пользователя и добавить домен. Сервер Apache.

**Скрипт принимает 2 переменные:**
- $1 - user
- $2 - domain


## delete-user-and-site.sh

Удалить в GNU/Linux пользователя и удалить домен. Сервер Apache.

**Скрипт принимает 2 переменные:**
- $1 - user
- $2 - domain

**Шаги скрипта:**
- удалим каталог сайта
- удалим файл конфигурации
- отключим виртуальный хост
- удалим юзера
- перезагрузим апач

**Посмотреть пользователей в системе:**

```bash
cat /etc/passwd | grep home
```
или так:
```bash
sed 's/:.*//' /etc/passwd
```
