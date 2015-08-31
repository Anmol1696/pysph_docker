FROM ubuntu:14.04
MAINTAINER user@example.com
LABEL version = '0.0.3'

ADD update.py /
ENV HOME=/root
ENV QT_X11_NO_MITSHM=1

RUN apt-get update && apt-get install -yq apt-utils vim

RUN apt-get install -yq python python3 build-essential python-dev python-numpy python-mako python-nose \
    python-qt4 python-setuptools python-importlib python-unittest2 python-mock python-mpi4py \
    python-matplotlib

RUN apt-get install -yq libopenmpi-dev libgomp1 cython mayavi2 git wget tar gcc && \
    apt-get autoremove && \
    apt-get clean

# For downloading the PySPH and setting up setup
RUN cd ~ && git clone https://bitbucket.org/pysph/pysph.git && \
    cd ~/pysph && \
    ./build_zoltan.sh ~/zoltan && \
    export ZOLTAN=~/zoltan && \
    python setup.py develop && \
    cd ../.. && \
    python update.py set

VOLUME $HOME
WORKDIR $HOME
CMD python update.py check
