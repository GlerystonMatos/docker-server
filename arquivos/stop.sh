#!/bin/bash

echo -e "Parando aplicações...\n"

sudo docker-compose down
sudo docker rmi $(docker images | grep 'glerystonmatos')

echo "Finalizado com sucesso"