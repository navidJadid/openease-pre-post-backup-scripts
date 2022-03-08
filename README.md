# openease-pre-post-backup-scripts

This repository provides the scripts that need to be run before and after backing up volume-data of the docker containers in the openease project. Generally, all these scripts do is to stop and restart the docker-compose stack, as it is recommended to do so when backing up volume data.

These scripts require docker and docker-compose to be installed.

Docker volume data can generally be found at:

``` system
 /var/lib/docker/volumes/
```
