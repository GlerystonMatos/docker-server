# Indica que o script deve ser executado pelo interpretador Bash
#!/bin/bash

# Atualizar o sistema e instalar dependências necessárias
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Adicionar a chave GPG oficial do Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Adicionar o repositório do Docker
sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Atualizar o índice do pacote do apt novamente
sudo apt-get update

# Instalar o docker
sudo apt-get install -y docker-ce

# Adicionar o usuário atual ao grupo docker para evitar necessidade de sudo para usar o Docker
sudo usermod -aG docker ${USER}

# Baixar a última versão do docker compose
DOCKER_COMPOSE_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep 'tag_name' | cut -d\" -f4)
sudo curl -L "https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Aplicar permissões executáveis ao binário do docker compose
sudo chmod +x /usr/local/bin/docker-compose

# Verificar instalações
docker --version
docker-compose --version

echo "Docker e Docker Compose foram instalados e o serviço foi iniciado com sucesso."
echo "Por favor, faça logout e login novamente ou reinicie seu sistema para aplicar as alterações de grupo do Docker."