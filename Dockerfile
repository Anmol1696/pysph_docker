FROM ubuntu:14.04
MAINTAINER user@example.com
LABEL version = '0.0.1'

ADD update.py /
ENV DISPLAY :0
ENV HOME=/home
RUN export QT_X11_NO_MITSHM=1

RUN apt-get update && apt-get install -yq apt-utils vim

RUN apt-get install -yq python build-essential python-dev python-numpy python-mako python-nose \
    python-qt4 python-setuptools python-importlib python-unittest2 python-mock python-mpi4py  python-matplotlib

RUN apt-get install -yq libopenmpi-dev libgomp1 cython mayavi2 git wget tar gcc g++

# For downloading the PySPH and setting up setup
RUN cd ~ && git clone https://bitbucket.org/pysph/pysph.git

RUN cd ~/pysph && \
    ./build_zoltan.sh ~/zoltan && \
    export ZOLTAN=~/zoltan && \
    python setup.py develop \
    cd ../.. && \
    python update.py

CMD python update.py check

ENV MOUNT_VOL = ~/Documents/PySPH_Plots
VOLUME $MOUNT_VOL


