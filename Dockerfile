FROM ubuntu:14.04
MAINTAINER user@gmail.com

RUN apt-get update && DEBIAN_FRONTED=noninteractive apt-get install -yq apt-utils 
RUN DEBIAN_FRONTED=noninteractive apt-get install python build-essential python-dev python-dev python-numpy python-mako cython python-nose mayavi2 python-qt4 python-virtualenv
#OpenMP
RUN DEBIAN_FRONTED=noninteractive apt-get install libgomp1 

#For parallel support
RUN DEBIAN_FRONTED=noninteractive apt-get install libopenmpi-dev python-mpi4py
CMD ["./build_zoltan.sh","~/zoltan"]
CMD ["export","ZOLTAN=~/zoltan"]

# 
