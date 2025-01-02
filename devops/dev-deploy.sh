#!/bin/bash

bash awslogin.sh # login to aws ecr

docker pull 12345.dkr.ecr.ap-southeast-1.amazonaws.com/reponame:api-dev
docker pull 12345.dkr.ecr.ap-southeast-1.amazonaws.com/reponame:frontend-dev

docker-compose up -d  # start docker-compose

docker-compose ps # check docker-compose

docker system prune -f #clean up 