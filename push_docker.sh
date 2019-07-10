#!/usr/bin/env bash

set -e

if [ "$CIRRUS_BRANCH" != "master" ]
then
    exit 0
fi

docker login --username $DOCKER_USER_NAME --password $DOCKER_PASSWORD

docker push yunbaoguan/flutter:base
docker push yunbaoguan/flutter:$DOCKER_TAG
docker push yunbaoguan/flutter:$DOCKER_TAG-web
