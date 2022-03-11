#!/bin/bash

# If you call this script from within another script
# it might be necessary to use an absolute path.
# Otherwise there might be problems resolving the
# path to config.sh
source ./config.sh

stop-compose-script () {
    cd $1
    docker-compose stop
}

for path in ${docker_compose_paths[@]}
do
    stop-compose-script ${path}
    echo ${PWD}
done
