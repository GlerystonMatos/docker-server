#!/bin/bash

sudo docker-compose down
sudo docker rmi $(docker images | grep 'glerystonmatos')
sudo docker rmi $(docker images | grep 'postgres')
sudo docker rmi $(docker images | grep 'grafana')