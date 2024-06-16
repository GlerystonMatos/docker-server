#!/bin/bash

echo "[docker-server] - Baixando arquivos necessários para instalação..."
sudo curl -s -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/.env
sudo curl -s -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/add_alias.sh
sudo curl -s -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/certificado.pfx
sudo curl -s -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/commands.sh
sudo curl -s -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/docker-compose.yml
sudo curl -s -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/prepare.sh
sudo curl -s -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/reboot.sh
sudo curl -s -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/restart.sh
sudo curl -s -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/show_logs.sh
sudo curl -s -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/start.sh
sudo curl -s -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/status.sh
sudo curl -s -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/stop.sh

echo "[docker-server] - Criando diretório para armazenamento de arquivos compartilhados com as aplicações do ambiente..."
sudo mkdir -p arquivos

echo "[docker-server] - Copiando certificado de desenvolvimento para diretório de arquivos compartilhados..."
sudo mv -f certificado.pfx arquivos/

echo "[docker-server] - Abrindo arquivo de configuração de variáveis de ambiente para edição..."
sudo nano .env

echo "[docker-server] - Dando permissão de execução para os scripts da instalação..."
sudo chmod +x add_alias.sh
sudo chmod +x commands.sh
sudo chmod +x prepare.sh
sudo chmod +x reboot.sh
sudo chmod +x restart.sh
sudo chmod +x show_logs.sh
sudo chmod +x start.sh
sudo chmod +x status.sh
sudo chmod +x stop.sh

echo "[docker-server] - Movendo os scripts da instalação para a pasta do usuário..."
sudo mv -f add_alias.sh ../
sudo mv -f commands.sh ../
sudo mv -f prepare.sh ../
sudo mv -f reboot.sh ../
sudo mv -f restart.sh ../
sudo mv -f show_logs.sh ../
sudo mv -f start.sh ../
sudo mv -f status.sh ../
sudo mv -f stop.sh ../

echo "[docker-server] - Criando diretório para armazenar os scripts..."
cd ..
sudo mkdir -p scripts

echo "[docker-server] - Movendo scripts para novo diretório no usuário ..."
sudo mv -f add_alias.sh scripts/
sudo mv -f commands.sh scripts/
sudo mv -f prepare.sh scripts/
sudo mv -f reboot.sh scripts/
sudo mv -f restart.sh scripts/
sudo mv -f show_logs.sh scripts/
sudo mv -f start.sh scripts/
sudo mv -f status.sh scripts/
sudo mv -f stop.sh scripts/
cd scripts/

echo "[docker-server] - Criando alias no sistema..."
./add_alias.sh

echo "[docker-server] - Preparando ambiente..."
./prepare.sh

echo -e "[docker-server] - Instalação finalizada\n"
./commands.sh

echo -e "\n[docker-server] - Caso queira ver os comandos disponíveis novamente basta usar o comando: comandos"
echo "[docker-server] - Por favor reinicie seu sistema para aplicar as alterações de grupo do docker ou faça logout e login novamente"
echo "[docker-server] - Após reiniciar será necessário iniciar as aplicações usando o comando iniciar na pasta do ambiente"

./reboot.sh