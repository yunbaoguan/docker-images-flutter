#!/usr/bin/env bash

set -e

# pull to make sure we are not rebuilding for nothing
docker pull cirrusci/flutter:base

docker build --cache-from cirrusci/flutter:base \
             --tag cirrusci/flutter:base base
# docker build --cache-from yunbaoguan/flutter:$FLUTTER_VERSION \
docker build \
             --tag yunbaoguan/flutter:$DOCKER_TAG \
             --build-arg flutter_version=$FLUTTER_VERSION \
             sdk
# docker build --cache-from yunbaoguan/flutter:$FLUTTER_VERSION-web \
docker build \
             --tag yunbaoguan/flutter:$DOCKER_TAG-web \
             --build-arg flutter_version=$FLUTTER_VERSION \
             web
