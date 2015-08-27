# pysph_docker
**Test dockerfile for [PySPH](https://bitbucket.org/pysph/pysph)**<br>
For getting latest image install docker and run `docker pull anmol1696/pysph-docker`

##Instructions for installation
###For Linux users
1. For installing docker, run `sudo apt-get install docker.io`
2. For getting the pysph-docker image run `docker pull anmol1696/pysph-docker`

###For OSX users
1. For installing docker, go [here](https://www.docker.com/toolbox)
2. For getting the pysph-docker image run `docker pull anmol1696/pysph-docker`

##Updating
###For Linux and OSX users
Download *auto-update.sh* from the [remote repository](https://github.com/Anmol1696/pysph_docker).<br>
**For updating the docker image:**<br>
Run `chmod +x auto-update.sh` for making the file executable<br>
Run `./auto-update.sh` for downloading the latest image.

##Running the image
###For Linux users
On our host machine run <br>
Run `chmod +x pysph_run.sh` <br>
Run `./pysph_run.sh` <br>
The above command forms a sub-shell in which the bash file is run.<br>
If someone wants to run this in the same shell than<br>
Run`. ./pysph_run.sh`<br>
This will also enable you to access the mount volume using the below given steps<br> 

##Viewing the Mount Volume
###For Linux users
The path of the directory, where the mount volume is stored in host machine, is in variable `MOUNT_VOL`<br>
For viewing the mount volume enter following commands : <br>
`sudo -E su   `<br>
`cd $MOUNT_VOL`<br>
In order to use these commands you must run `. ./pysph_run.sh`<br>
Also the use of environmental variable must be in the same shell in which you ran the *pysph_run.sh*<br> 
