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