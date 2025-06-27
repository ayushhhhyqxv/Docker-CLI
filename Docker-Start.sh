sudo apt-get update           # updates all CLI things

sudo apt-get install docker.io    # installs docker for CA certificates download from offical site

docker --version   # check your version

sudo docker ps     # shows running containers

sudo usermod -a -G docker $USER      # All docker conditions given to your user then reboot

# Fetch Image of whichever application you want to run through DOCKER HUB
# Most of the Images created through DOCKER file is already on DOCKER HUB

docker pull <application-name>       # fetches latest tag of image just like latest version of commit through github

docker run -it --name <container-name> <image-name>:latest   # Command to start or run a container with given Image

# If virtualizing a database app we need to add password while running it 

docker run -it --name <container-name> -e MY_SQL_PASSWORD=<your-passwd> <image-name>:latest   #interactive-terminal mode

#OR 

docker run -d --name <container-name> -e MY_SQL_PASSWORD=<your-passwd> -p 8000:8000 <image-name>:latest    # daemon mode

docker ps  # shows all running containers

docker ps -a  # shows all dead+running containers

docker stop <container-ID>

docker rm <container-ID>    # to remove/stop a specific container

# If i want to use that app within container in my local ubuntu server then 

docker exec -it <container-ID> bash  # gets inside the bash of that container

<app-name> -u root -p       # authenticates user as root and asks for password

# Now that app is running in your local server using docker without even installing it ! use exit command further if you want to exit 








