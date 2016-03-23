#! /bin/sh

docker run -v /var/run/docker.sock:/var/run/docker.sock -v $PWD:/compose -w /compose -ti docker/compose:1.6.2 -f ./docker/docker-compose.yml up
