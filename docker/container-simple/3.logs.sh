#!/bin/sh
echo シェルディレクトリに移動
CURRENT=$(cd $(dirname $0);pwd)
cd $CURRENT
echo CURRENT=$(pwd)

echo ■ ログを取得
sudo docker logs -t `sudo docker ps -aqf "name=open-interpreter"`



