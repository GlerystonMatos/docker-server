#!/bin/bash

~/scripts/stop.sh

echo ""
echo "Deseja baixar os arquivos de configuração de ambiente novamente? (Esta ação é necessária caso tenham sido realizadas modificações no ambiente)"
read -p "Esta ação vai sobrescrever as configurações atuais, sendo necessário configurá-las novamente (sim/não): " resposta

if [[ "$resposta" =~ ^(sim|s|S|SIM|Sim)$ ]]; then
    echo -e "Baixando arquivos mais atuais...\n"
    sudo curl -s -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/.env
    sudo curl -s -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/docker-compose.yml
else
    echo -e "Operação cancelada.\n"
fi

sudo nano .env

~/scripts/start.sh