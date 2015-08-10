import urllib
import sys

def get_repo_version(repo):
    try:
        dockerfile_version = urllib.urlopen(repo).readlines()[2]
    except:
        return
    dockerfile_version = dockerfile_version.replace("LABEL version = ", "")
    return dockerfile_version.replace("'","")

def get_curr_version():
    return open("curr_version.db","r").read()

if __name__ == '__main__':
    repo = "https://raw.githubusercontent.com/Anmol1696/pysph_docker/master/Dockerfile"

    if sys.argv[1] == "set":
        f = open("curr_version.db","w")
        f.write(get_repo_version(repo))
        f.close()

    if sys.argv[1] == "check":
        latest = get_repo_version(repo)
        if get_curr_version() != latest:
            print "A newer version " + latest + " is available. Use 'docker pull anmol1696/pysph-docker' for downloading"
