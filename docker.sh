#!/bin/bash

### It dockerizes automatically ###
cd /home/TolaSMS
git stash
git pull origin master

docker-compose build 
docker-compose up

