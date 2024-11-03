#!/bin/sh
echo シェルディレクトリに移動
CURRENT=$(cd $(dirname $0);pwd)
cd $CURRENT
echo CURRENT=$(pwd)

echo ■ exec
sudo docker exec -it open-interpreter bash

