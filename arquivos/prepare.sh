#!/bin/bash

echo -e "[docker-server] - Atualizando o sistema e instalando as dependências necessárias...\n"
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

echo -e "\n[docker-server] - Adicionar a chave GPG oficial do docker...\n"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo -e "\n[docker-server] - Adicionando o repositório do docker...\n"
sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

echo -e "\n[docker-server] - Atualizando o índice do pacote do APT novamente...\n"
sudo apt-get update

echo -e "\n[docker-server] - Instalando o docker...\n"
sudo apt-get install -y docker-ce

echo -e "\n[docker-server] - Adicionando o usuário atual ao grupo docker para evitar necessidade de sudo para usar o docker..."
sudo usermod -aG docker ${USER}

echo -e "[docker-server] - Baixando a última versão do docker compose...\n"
DOCKER_COMPOSE_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep 'tag_name' | cut -d\" -f4)
sudo curl -L "https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

echo -e "\n[docker-server] - Aplicando permissões executáveis ao binário do docker compose..."
sudo chmod +x /usr/local/bin/docker-compose

echo -e "[docker-server] - Verificando instalação do docker...\n"
docker --version

echo -e "\n[docker-server] - Verificando instalação do docker compose...\n"
docker-compose --version

echo -e "\n[docker-server] - Docker e docker compose foram instalados e o serviço foi iniciado com sucesso."
echo -e "[docker-server] - Por favor, faça logout e login novamente ou reinicie seu sistema para aplicar as alterações de grupo do docker."