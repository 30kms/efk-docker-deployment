#!/bin/bash

source .env
UID=$(id -u)

cp -f fluentd/conf/fluent.template fluentd/conf/fluent.conf
cp -f fluentd/Dockerfile.template fluentd/Dockerfile
chmod 600 fluentd/conf/fluent.conf

sed -i 's#ES_PASSWORD#'$ES_PASSWORD'#g' fluentd/conf/fluent.conf
sed -i 's#UID#'$UID'#g' fluentd/Dockerfile

docker-compose build && docker-compose up -d && exit 0
echo "start docker-compose failed"
exit 1
