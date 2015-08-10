FROM ubuntu:14.04
MAINTAINER user@example.com
LABEL version = '0.0.1-beta'

RUN apt-get update && apt-get install -yq apt-utils

<<<<<<< HEAD
RUN apt-get install -yq python build-essential python-dev python-numpy python-mako python-nose python-qt4 python-setuptools python-importlib python-unittest2 python-mock

RUN apt-get install -yq libopenmpi-dev python-mpi4py libgomp1 cython mayavi2 git wget curl tar gcc g++
=======
RUN apt-get install -yq python build-essential \
python-dev python-numpy python-mako cython python-nose \
mayavi2 python-qt4 git python-setuptools

# For parallel support and OpenMP
RUN apt-get install -yq libopenmpi-dev python-mpi4py python-importlib python-unittest2 libgomp1

# Some additional packages
RUN apt-get install -yq wget curl tar gcc g++

RUN export CC=gcc-4.8.4

RUN apt-get install python-mock
>>>>>>> bb0c01bd1191f3dc5783733ac5af74030b64a1f2

# For downloading the PySPH and setiing up setup
RUN git clone https://bitbucket.org/pysph/pysph.git 

<<<<<<< HEAD
RUN cd pysph && ./build_zoltan.sh /zoltan && export ZOLTAN=/zoltan && python setup.py develop
=======
RUN cd pysph && ./build_zoltan.sh /zoltan && export ZOLTAN=/zoltan && python setup.py develop
>>>>>>> bb0c01bd1191f3dc5783733ac5af74030b64a1f2
