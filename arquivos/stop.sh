#!/bin/bash

if [ -f .env ]; then
  export $(cat .env | grep -v '#' | awk '/=/ {print $1}')
fi

sudo docker-compose down
sudo docker rmi $(sudo docker images --format '{{.Repository}}:{{.Tag}} {{.ID}}' | grep "$PREFIXO_IMAGENS" | awk '{print $2}')