xhost +
XSOCK=/tmp/.X11-unix
docker run -i -t -v $XSOCK:$XSOCK anmol1696/pysph-docker /bin/bash || docker attach pysph-docker /bin/bash
