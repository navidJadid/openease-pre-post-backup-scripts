#!/bin/bash

# array to hold all the paths to relevant compose-files
# that should be started with this script
docker_compose_paths=( \
    # add your paths here
    # lines need to be separated by backslash
    # example:
    #   /usr/Documents \
)

stop-compose-script () {
    cd $1
    docker-compose stop
}

for path in ${docker_compose_paths[@]}
do
    stop-compose-script ${path}
    echo ${PWD}
done