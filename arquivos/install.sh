#!/bin/bash

echo -e "Baixando arquivos necessários para instalação...\n"

sudo curl -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/.env
sudo curl -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/certificado.pfx
sudo curl -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/docker-compose.yml
sudo curl -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/prepare.sh
sudo curl -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/start.sh
sudo curl -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/stop.sh

echo -e "Criando diretórios necessários...\n"
sudo mkdir arquivos

echo -e "Copiando certificado de desenvolvimento para diretório de arquivos...\n"
sudo mv certificado.pfx arquivos/

echo -e "Dando permissão de execução para os arquivos .sh...\n"
sudo chmod +x prepare.sh
sudo chmod +x start.sh
sudo chmod +x stop.sh

echo -e "Executando script de preparação do ambiente...\n"
./prepare.sh

echo -e "Abrindo arquivo de configuração de variáveis de ambiente para edição (CTRL + X → Y → ESC)...\n"
sudo nano .env

echo -e "Executando script para iniciar as aplicações...\n"
./start.sh