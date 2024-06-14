# Indica que o script deve ser executado pelo interpretador Bash
#!/bin/bash

echo -e "Atualizar o sistema e instalar dependências necessárias...\n"
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

echo -e "Adicionar a chave GPG oficial do docker...\n"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo -e "Adicionando o repositório do docker...\n"
sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

echo -e "Atualizando o índice do pacote do APT novamente...\n"`
sudo apt-get update

echo -e "Instalando o docker...\n"
sudo apt-get install -y docker-ce

echo -e "Adicionando o usuário atual ao grupo docker para evitar necessidade de sudo para usar o docker...\n"
sudo usermod -aG docker ${USER}

echo -e "Baixando a última versão do docker compose...\n"
DOCKER_COMPOSE_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep 'tag_name' | cut -d\" -f4)
sudo curl -L "https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

echo -e "Aplicando permissões executáveis ao binário do docker compose...\n"
sudo chmod +x /usr/local/bin/docker-compose

echo -e "Verificando instalação do docker...\n"
docker --version´

echo -e "Verificando instalação do docker compose...\n"
docker-compose --version

echo -e "Docker e docker compose foram instalados e o serviço foi iniciado com sucesso.\n"
echo -e "Por favor, faça logout e login novamente ou reinicie seu sistema para aplicar as alterações de grupo do docker.\n"