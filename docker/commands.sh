# RUN WITH SUDO IN LINUX

docker images # list docker images

docker ps -a # list containers

docker stop 2ec39811f519 # stop container

docker rm 2ec39811f519 # run container

# run docker image
docker run -p 3000:3000 blog-api1
docker run -d -p 3000:3000 blog-api3

docker build -t blog-api2 . # build docker image

docker logs container_name_or_id # show logs docker image

docker rmi blog-api # remove docker image

# execute commands inside docker running container
docker exec -it db-products ls

docker inspect -f idcontainer #check docker container ip