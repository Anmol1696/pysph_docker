xhost +
XSOCK=/tmp/.X11-unix
docker run --name pysph-docker -i -t -v $XSOCK:$XSOCK anmol1696/pysph-docker /bin/bash || (docker start pysph-docker /bin/bash && docker attach pysph-docker)
# Inorder to view the volume files run "cd MOUNT_VOL"
MOUNT_VOL=`docker inspect -f '{{(index .Mounts 1).Source}}' pysph-docker`
