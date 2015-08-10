FROM ubuntu:14.04
MAINTAINER user@example.com
LABEL version = '0.0.1-beta'

RUN apt-get update && apt-get install -yq apt-utils

RUN apt-get install -yq python build-essential python-dev python-numpy python-mako python-nose python-qt4 python-setuptools python-importlib python-unittest2 python-mock

RUN apt-get install -yq libopenmpi-dev python-mpi4py libgomp1 cython mayavi2 git wget curl tar gcc g++

# For downloading the PySPH and setiing up setup
RUN git clone https://bitbucket.org/pysph/pysph.git 

RUN cd pysph && ./build_zoltan.sh /zoltan && export ZOLTAN=/zoltan && python setup.py develop