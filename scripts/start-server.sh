#!/bin/bash

echo "--------------- 서버 배포 시작 -----------------"
# cd /home/ubuntu/spring_demo
# sudo fuser -k -n tcp 8080 || true
# nohup java -jar project.jar > ./output.log 2>&1 &
docker stop instagram-server || true
docker rm instagram-server || true
docker pull 471112870624.dkr.ecr.us-east-1.amazonaws.com/instagram-server:latest
docker run -d --name instagram-server -p 8080:8080 471112870624.dkr.ecr.us-east-1.amazonaws.com/instagram-server:latest
echo "--------------- 서버 배포 끝 -----------------"