#!/bin/bash

echo -e "\n[docker-server] - Parando aplicações...\n"

sudo docker-compose down
sudo docker rmi $(docker images | grep 'glerystonmatos')

echo -e "\n[docker-server] - Finalizado com sucesso\n"