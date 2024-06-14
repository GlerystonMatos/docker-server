# Comandos windows

Conectar no servidor linux via SSH

```bash
ssh glerystonmatos@10.0.0.195
```

# Comandos linux

Desligar servidor imediatamente:
```bash
poweroff
```

Desligar servidor imediatamente:
```bash
shutdown -h now
```

Verificar IP do servidor:
```bash
ifconfig
```

Instalar ferramentas de rede:
```bash
sudo apt install net-tool
```

Criar pasta:
```bash
mkdir shared
```

Navegar para um diretório:
```bash
cd shared/
```

Criar um arquivo:
```bash
touch docker-compose.yml
```

Abrir arquivo com o nano:
```bash
nano docker-compose.yml
```

Ver conteúdo arquivo:
```bash
cat docker-compose.yml
```

Apagar pasta:
```bash
rmdir shared
```

Apagar arquivo:
```bash
rm docker-compose.yml
```

Baixar arquivo remoto:
```bash
sudo curl -L -O https://raw.githubusercontent.com/GlerystonMatos/docker-server/main/arquivos/install.sh
```

Dar permissão de execução para o script:
```bash
sudo chmod +x install.sh
```

Dar permissão de execução para o script:
```bash
sudo ./install.sh
```

Apagar arquivos e pastas de um diretório:
```bash
sudo rm -rf *
```

# Personalizar o prompt do shell

Use o comando nano para abrir o arquivo ~/.bashrc:

```bash
nano ~/.bashrc
```

```bash
PS1='\[\e[1;32m\]\u@\h \[\e[1;34m\]\w \$\[\e[0m\] '
```

Esta configuração exibe o nome do usuário em verde, o nome do host em azul e o diretório de trabalho atual em azul.

- \[\e[1;32m\] define a cor verde.
- \u é substituído pelo nome do usuário.
- \h é substituído pelo nome do host.
- \[\e[1;34m\] define a cor azul.
- \w é substituído pelo diretório de trabalho atual.
- \[\e[0m\] redefine todas as cores ao padrão.

Após adicionar a linha, recarregue o arquivo de configuração:
```bash
source ~/.bashrc
```

# Comandos docker

Para verificar se o Docker está em execução, você pode usar o comando:
```bash
systemctl status docker
```

Para monitorar o uso de recursos (CPU, memória, rede, etc.) de um container:
```bash
docker stats
```

Para listar todas as imagens:
```bash
docker images
```

Para listar todos os containers (tanto em execução quanto parados):
```bash
sudo docker ps -a
```

Para listar apenas os containers em execução:
```bash
sudo docker ps
```

Para visualizar os logs de um container específico:
```bash
docker logs <container_id>
```

Para seguir os logs em tempo real:
```bash
docker logs -f <container_id>
```

Para remover uma imagem especifica:
```bash
docker rmi <container_id>
```