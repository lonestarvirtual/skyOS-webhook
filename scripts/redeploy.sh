#!/bin/bash
cd /app
docker login https://docker.pkg.github.com -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
docker-compose pull
docker-compose up -d
