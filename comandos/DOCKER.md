# Comandos docker

Verificar se o docker está em execução:
```bash
systemctl status docker
```

Monitorar o uso de recursos (CPU, memória, rede, etc.) dos containers em execução em tempo real:
```bash
docker stats
```

Listar todas as imagens baixadas:
```bash
docker images
```

Listar todos os containers (Tanto em execução quanto parados):
```bash
docker ps -a
```

Listar apenas os containers em execução:
```bash
docker ps
```

Visualizar os logs de um container:
```bash
docker logs <container_id>
```

Exibir os logs de um container em tempo real:
```bash
docker logs -f <container_id>
```

Remover uma imagem:
```bash
docker rmi <container_id>
```