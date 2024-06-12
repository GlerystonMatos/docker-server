#!/bin/bash

sudo curl -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/.env
sudo curl -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/certificado.pfx
sudo curl -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/docker-compose.yml
sudo curl -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/prepare.sh
sudo curl -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/start.sh
sudo curl -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/stop.sh

sudo mkdir arquivos
sudo mkdir postgres

sudo mv certificado.pfx arquivos/

sudo chmod +x prepare.sh
sudo chmod +x start.sh
sudo chmod +x stop.sh

./prepare.sh

sudo nano .env

./start.sh