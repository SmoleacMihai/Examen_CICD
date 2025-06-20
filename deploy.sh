#!/bin/sh
docker build -t username/examen-cicd .
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push username/examen-cicd
