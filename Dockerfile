FROM ubuntu:14.04
MAINTAINER user@gmail.com
LABEL version = '0.0.1-beta'

RUN apt-get update && DEBIAN_FRONTED=noninteractive apt-get install -yq apt-utils

RUN DEBIAN_FRONTED=noninteractive apt-get install -yq python build-essential \
python-dev python-numpy python-mako cython python-nose \
mayavi2 python-qt4 git python-setuptools

# OpenMP
RUN DEBIAN_FRONTED=noninteractive apt-get install -yq libgomp1

# For parallel support
RUN DEBIAN_FRONTED=noninteractive apt-get install -yq libopenmpi-dev python-mpi4py python-importlib python-unittest2

# Some additional packages
RUN DEBIAN_FRONteD=noninteractive apt-get install -yq wget curl tar gcc g++

RUN export CC=gcc-4.8.4

# Installing locate
#RUN apt-get install -yq locate pip
#RUN pip install numpy

# For downloading the PySPH and setiing up setup
ADD pysph /
ADD build_zoltan.sh /

RUN ./build_zoltan.sh /pyzoltan
RUN export ZOLTAN=/pyzoltan

RUN python  setup.py install

# For update of PySPH
# CMD ["git", "pull"]
# CMD ["python", "setup.py", "develop"]
