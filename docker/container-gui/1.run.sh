#!/bin/sh
echo シェルディレクトリに移動
CURRENT=$(cd $(dirname $0);pwd)
cd $CURRENT
echo CURRENT=$(pwd)

sudo docker compose -f docker-compose.yml -f docker-compose.yml build
sudo docker compose -f docker-compose.yml -f docker-compose.yml up  -d --force-recreate 
