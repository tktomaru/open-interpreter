#!/bin/bash
echo シェルディレクトリに移動
CURRENT=$(cd $(dirname $0);pwd)
cd $CURRENT
echo CURRENT=$(pwd)

 sudo docker system prune