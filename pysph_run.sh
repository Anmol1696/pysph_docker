#!/bin/bash
xhost +
XSOCK=/tmp/.X11-unix
CONT=`docker ps -a --filter "name=pysph-docker" --format "{{.ID}}"`
if [ ! -z $CONT ]
then
  docker start pysph-docker /bin/bash
  docker attach pysph-docker
else
  docker run --name pysph-docker -i -t -e $DISPLAY -v $XSOCK:$XSOCK anmol1696/pysph-docker /bin/bash
fi
export MOUNT_VOL=`sudo docker inspect -f '{{(index .Mounts 1).Source}}' pysph-docker`

echo "The mounted volume can be found at $MOUNT_VOL"
