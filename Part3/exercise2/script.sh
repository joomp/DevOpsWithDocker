#!/bin/bash

git clone $REPOSITORY_URL $IMAGE_NAME
cd $IMAGE_NAME
rm -rf .git

docker build . -t "$DOCKER_HUB_USERNAME/$IMAGE_NAME";
docker login -u $DOCKER_HUB_USERNAME -p $DOCKER_HUB_PASSWORD;

docker push $DOCKER_HUB_USERNAME/$IMAGE_NAME;
