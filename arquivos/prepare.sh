#!/bin/bash

echo "[docker-server] - Atualizando o sistema..."
sudo apt-get update >/dev/null 2>&1

echo "[docker-server] - Instalando as dependências necessárias..."
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common >/dev/null 2>&1

echo "[docker-server] - Adicionar a chave GPG oficial do docker..."
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - >/dev/null 2>&1

echo "[docker-server] - Adicionando o repositório do docker..."
sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" >/dev/null 2>&1

echo "[docker-server] - Atualizando o índice do pacote do APT novamente..."
sudo apt-get update >/dev/null 2>&1

echo "[docker-server] - Instalando o docker..."
sudo apt-get install -y docker-ce >/dev/null 2>&1

echo "[docker-server] - Adicionando o usuário atual ao grupo docker para evitar necessidade de sudo para usar o docker..."
sudo usermod -aG docker ${USER}
sudo usermod -aG docker ${SUDO_USER}

echo "[docker-server] - Baixando a última versão do docker compose..."
DOCKER_COMPOSE_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep 'tag_name' | cut -d\" -f4)
sudo curl -s -L "https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

echo "[docker-server] - Aplicando permissões executáveis ao binário do docker compose..."
sudo chmod +x /usr/local/bin/docker-compose

echo -e "[docker-server] - Verificando instalação do docker/docker-compose...\n"
sudo docker --version
sudo docker-compose --version

echo -e "\n[docker-server] - Docker e docker compose foram instalados e o serviço foi iniciado com sucesso."