#!/bin/bash
xhost +
XSOCK=/tmp/.X11-unix
CONT=`docker ps -a --filter "name=pysph-docker" --format "{{.ID}}"`
if [ $CONT != "" ]
then
  docker start pysph-docker /bin/bash
  docker attach pysph-docker
else
  docker run --name pysph-docker -i -t -v $XSOCK:$XSOCK anmol1696/pysph-docker /bin/bash
MOUNT_VOL=`docker inspect -f '{{(index .Mounts 1).Source}}' pysph-docker`
