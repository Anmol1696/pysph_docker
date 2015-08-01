FROM ubuntu:14.04
MAINTAINER user@gmail.com
LABEL version = '0.1.1-beta' #Use pip for installing stable version

RUN apt-get update && DEBIAN_FRONTED=noninteractive apt-get install -yq apt-utils

RUN apt-get install -y python python-dev python-distribute python-pip

RUN DEBIAN_FRONTED=noninteractive apt-get install -yq python build-essential \
python-numpy python-mako cython python-nose \
mayavi2 python-qt4 git python-setuptools

# OpenMP
RUN DEBIAN_FRONTED=noninteractive apt-get install -yq libgomp1

# For parallel support
RUN DEBIAN_FRONTED=noninteractive apt-get install -yq libopenmpi-dev python-mpi4py

# Installing locate
#RUN sudo apt-get install -yq locate

RUN ["./build_zoltan.sh", "~/zoltan"]
RUN ["export", "ZOLTAN=~/zoltan"]

RUN pip install PySPH
