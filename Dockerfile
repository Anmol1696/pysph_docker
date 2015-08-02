FROM ubuntu:14.04
MAINTAINER user@gmail.com
LABEL version = '0.0.1-beta'

RUN apt-get update && DEBIAN_FRONTED=noninteractive apt-get install -yq apt-utils

RUN apt-get install -y python python-dev python-distribute python-pip

RUN DEBIAN_FRONTED=noninteractive apt-get install -yq python build-essential \
python-dev python-numpy python-mako cython python-nose \
mayavi2 python-qt4 git python-setuptools

# OpenMP
RUN DEBIAN_FRONTED=noninteractive apt-get install -yq libgomp1

# For parallel support
RUN DEBIAN_FRONTED=noninteractive apt-get install -yq libopenmpi-dev python-mpi4py

# Some additional packages
RUN DEBIAN_FRONteD=noninteractive apt-get install -yq wget curl tar gcc g++

# Installing locate
#RUN sudo apt-get install -yq locate

#ADD build_zoltan.sh /

#WORKDIR /

#RUN mkdir -p ~/zoltan

#RUN chmod +x /build_zoltan.sh ~/zoltan
#RUN export ZOLTAN=~/zoltan

# For downloading the PySPH and setiing up setup
#RUN git clone https://bitbucket.org/pysph/pysph.git
#RUN ["python", "/pysph/setup.py", "develop"]

# For downloading the PySPH and setiing up setup
RUN git clone https://bitbucket.org/pysph/pysph.git

RUN chmod +x /pysph/build_zoltan.sh /pyzoltan
RUN export ZOLTAN=~/pyzoltan

RUN ["python", "/pysph/setup.py", "develop"] # this is the problem

# For update of PySPH
# CMD ["git", "pull"]
# CMD ["python", "setup.py", "develop"]
