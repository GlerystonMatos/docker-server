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

# Comandos docker

Verificar imagens:
```bash
sudo docker images
```

Verificar containers em execução:
```bash
sudo docker ps
```

Verificar containers:
```bash
sudo docker ps -a
```

Verifica logs de um container em execução:
```bash
sudo docker logs quiron-api
```

Remover imagem:
```bash
sudo docker rmi 3a
```