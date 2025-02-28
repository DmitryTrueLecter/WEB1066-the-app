#!/usr/bin/env bash
set -e

bash -c "echo \"${DOCKER_PASSWORD}\" | docker login --username \"${DOCKER_LOGIN}\" --password-stdin"
docker tag zutherb/monolithic-shop:latest ${DOCKER_LOGIN}/monolithic-shop:latest
docker push ${DOCKER_LOGIN}/monolithic-shop:latest
