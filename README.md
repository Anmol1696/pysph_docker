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

##Viewing the Mount Volume
###For Linux users
The directory where the the mount volume is stored is in `MOUT_VOL` variable<br>
For viewing the mount volume outside the container first one has to enter the super user and then move to the directory.<br>
The commands are <br>
`sudo -E su   `
`cd $MOUNT_VOL`
