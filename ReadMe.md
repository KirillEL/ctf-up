# Инфраструктура для CTF соревнований

Этот репозиторий содержит скрипты для запуска инфраструктуры, необходимой для проведения соревнований по Capture The Flag (CTF).

## Инструкции

Для использования этой инфраструктуры, выполните следующие шаги:

1. Склонируйте репозиторий:

    ```bash
    git clone https://github.com/KirillEL/QBTFarm
    ```

2. Внесите необходимые изменения в файл `.env`. Откройте файл `.env` в корне репозитория и укажите значения для следующих переменных:

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