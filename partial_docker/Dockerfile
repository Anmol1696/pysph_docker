FROM ubuntu:14.04
MAINTAINER user@example.com
LABEL version = '0.0.1'

RUN apt-get update && apt-get install -yq apt-utils

RUN apt-get install -yq python build-essential python-dev python-numpy python-mako python-nose \
    python-qt4 python-setuptools python-importlib python-unittest2 python-mock python-mpi4py python-matplotlib

RUN apt-get install -yq libopenmpi-dev libgomp1 cython mayavi2 git wget curl tar gcc g++
