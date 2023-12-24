#!/bin/bash

git clone https://github.com/KirillEL/QBTFarm


cd QBTFarm/

echo "
POSTGRES_HOST=qbt_db
POSTGRES_PASSWORD=<>
POSTGRES_USER=postgres
POSTGRES_DB=qbt_farm
" >> .env


cd ..


git clone --recurse-submodules https://gitlab.com/packmate/Packmate.git

cd Packmate/

echo "# Локальный IP сервера на указанном интерфейсе или в pcap файле
PACKMATE_LOCAL_IP=<YOUR_VULNBOX_IP>
PACKMATE_WEB_LOGIN=<YOUR_LOGIN>
PACKMATE_WEB_PASSWORD=<YOUR_PASSWORD>
PACKMATE_MODE=LIVE
PACKMATE_INTERFACE=any
PACKMATE_OLD_STREAMS_CLEANUP_ENABLED=true
PACKMATE_OLD_STREAMS_CLEANUP_INTERVAL=1
PACKMATE_OLD_STREAMS_CLEANUP_THRESHOLD=60" >> .env


