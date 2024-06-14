#!/bin/bash

echo -e "\n[docker-server] - Baixando arquivos necessários para instalação...\n"

sudo curl -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/.env
sudo curl -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/certificado.pfx
sudo curl -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/docker-compose.yml
sudo curl -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/prepare.sh
sudo curl -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/start.sh
sudo curl -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/stop.sh

echo -e "\n[docker-server] - Criando diretórios necessários..."
sudo mkdir arquivos

echo "[docker-server] - Copiando certificado de desenvolvimento para diretório de arquivos..."
sudo mv certificado.pfx arquivos/

echo "[docker-server] - Dando permissão de execução para os arquivos .sh..."
sudo chmod +x prepare.sh
sudo chmod +x start.sh
sudo chmod +x stop.sh

echo "[docker-server] - Criando alias no sistema..."
echo "" >> ~/.bashrc
echo "# alias-docker-server" >> ~/.bashrc
echo "alias status_docker='docker stats'" >> ~/.bashrc
echo "alias iniciar_ambiente='sudo docker-compose up -d'" >> ~/.bashrc
echo "alias parar_ambiente='./stop.sh'" >> ~/.bashrc
echo "alias ver_logs_api='sudo docker logs -f quiron-api'" >> ~/.bashrc
sudo source ~/.bashrc

echo "[docker-server] - Executando script de preparação do ambiente..."
./prepare.sh

echo -e "[docker-server] - Abrindo arquivo de configuração de variáveis de ambiente para edição (CTRL + X → Y → ESC)..."
sudo nano .env

echo "[docker-server] - Executando script para iniciar as aplicações..."
./start.sh