cd /app
echo $DOCKER_PASSWORD | \
docker login https://docker.pkg.github.com -u $DOCKER_USER --password-stdin
docker-compose pull
docker-compose up -d
