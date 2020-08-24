# echo $(docker ps -a -q)
# docker stop $(docker ps -a -q) // Stop all containers
# docker rm $(docker ps -a -q) // Remove all containers
# docker rmi -f $(docker images -a -q)

# docker image ls
# docker system prune -a
# docker volume rm $(docker volume ls -q)
#  docker network prune
docker system prune
