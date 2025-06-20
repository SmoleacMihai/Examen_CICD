#!/bin/sh
docker build -t $DOCKER_USERNAME/examen-cicd .

echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin

docker push $DOCKER_USERNAME/examen-cicd