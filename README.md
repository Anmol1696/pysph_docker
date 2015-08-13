# pysph_docker

[![Join the chat at https://gitter.im/Anmol1696/pysph_docker](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/Anmol1696/pysph_docker?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
<br>
**Test dockerfile for [PySPH](https://bitbucket.org/pysph/pysph)**<br>
For getting latest image install docker and run `docker pull anmol1696/pysph-docker`

##Instructions for installation
###For Linux users
1. For installing docker, run `sudo apt-get install docker.io`
2. For getting the pysph-docker image run `docker pull anmol1696/pysph-docker`

###For OSX users
1. For installing boot2docker, go [here](http://boot2docker.io/)
2. For getting the pysph-docker image run `docker pull anmol1696/pysph-docker`

##Updating
###For Linux and OSX users
Download 'auto-update.sh' from the [remote repository](https://github.com/Anmol1696/pysph_docker).<br>
**For updating the docker image:**<br>
Run `chmod +x auto-update.sh` for making the file executable<br>
Run `./auto-update.sh` for downloading the latest image.
