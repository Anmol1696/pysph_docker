# pysph_docker
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

##Running the image
###For Linux users
On our host machine run <br>
Run `chmod +x pysph_run.sh` <br>
Run `./pysph_run.sh` <br>  
This will also require x11 for X Server.<br>
The Mount Volume wiil be Saved in the in the `MOUNT_VOL`. If some problem occurs than it can be manualy be selected from the `docker inspect pysph-docker`. 
In this check for Mounts, Source. This will save have the file for addr where volume will be stored. It might need root preferences.