#!/bin/bash

sudo docker-compose down
sudo docker rmi $(docker images | grep 'glerystonmatos')