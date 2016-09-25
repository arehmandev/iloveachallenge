# Uncomment if docker installation required locally
# curl https://get.docker.com | sh

#Dockerfile build - copies go app into container and compiles prior to executing.
docker build -t sainsburys .

#Brings up Traeffik loadbalancer and both webapp containers
docker-compose up -d


echo "Add app.sainsburys as a localhost entry in /etc/hosts then browse there"
echo "docker-compose down to kill the local environment"
echo "The production environment is available via the Marathon JSON file"
