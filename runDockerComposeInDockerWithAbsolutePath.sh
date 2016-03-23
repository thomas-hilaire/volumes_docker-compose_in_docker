#! /bin/sh

docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -e BASE_PATH=$PWD -v $PWD:/compose -w /compose -ti docker/compose:1.6.2 -f ./docker/docker-compose-absolute-path.yml up
