#!/bin/bash

# array to hold all the paths to relevant compose-files
# that should be started with this script
docker_compose_paths=( \
    # add your paths here
    # lines need to be separated by backslash
    # example:
    #   /usr/Documents \
)

start-compose-script () {
    cd $1
    docker-compose start
}

for path in ${docker_compose_paths[@]}
do
    start-compose-script ${path}
    echo ${PWD}
done
