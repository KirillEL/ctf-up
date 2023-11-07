# Инфра для CTF

Этот репозиторий содержит скрипт для запуска необходимой инфраструктуры.

## Инструкции

Для использования этой инфраструктуры, выполните следующие шаги:

1. Склонируйте репозиторий:

    ```bash
    git clone https://github.com/KirillEL/ctf-up
    ```

2. Внесите изменения в данный скрипт:

   - `POSTGRES_PASSWORD`: Пароль для базы данных PostgreSQL.
   - `PACKMATE_LOCAL_IP`: Локальный IP-адрес сервера на указанном интерфейсе или в pcap файле.
   - `PACKMATE_WEB_LOGIN`: Имя пользователя для web-авторизации.
   - `PACKMATE_WEB_PASSWORD`: Пароль для web-авторизации.

   Например:

   ```ini
   POSTGRES_PASSWORD=my_secret_password
   PACKMATE_LOCAL_IP=192.168.1.100
   PACKMATE_WEB_LOGIN=my_username
   PACKMATE_WEB_PASSWORD=my_web_password