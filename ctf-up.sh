#!/bin/bash

git clone https://github.com/KirillEL/QBTFarm


cd QBTFarm/

echo "
POSTGRES_HOST=qbt_db
POSTGRES_PASSWORD=<>
POSTGRES_USER=postgres
POSTGRES_DB=qbt_farm
" >> .env

make start

cd ..


git clone --recurse-submodules https://gitlab.com/packmate/Packmate.git

cd Packmate/

echo "# Локальный IP сервера на указанном интерфейсе или в pcap файле
PACKMATE_LOCAL_IP=<YOUR_VULNBOX_IP>
# Имя пользователя для web-авторизации
PACKMATE_WEB_LOGIN=<YOUR_LOGIN>
# Пароль для web-авторизации
PACKMATE_WEB_PASSWORD=<YOUR_PASSWORD>
# Режим работы - перехват
PACKMATE_MODE=LIVE
# Интерфейс, на котором производится перехват трафика
PACKMATE_INTERFACE=any" >> .env

docker-compose up --build -d

