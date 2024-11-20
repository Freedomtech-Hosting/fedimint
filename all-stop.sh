#!/bin/bash

docker-compose -f docker-compose1.yml -p fedimint1 stop
docker-compose -f docker-compose2.yml -p fedimint2 stop
docker-compose -f docker-compose3.yml -p fedimint3 stop
docker-compose -f docker-compose4.yml -p fedimint4 stop