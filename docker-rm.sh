# Remove all containers
docker rm $(docker ps -q -a) -f
