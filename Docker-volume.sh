docker logs <containerID> # shows logs of specific container

docker attach <containerID> # shows real time logs of that container,used to check containers

docker volume create --name <volume-name> --opt type=none --opt device=<volume-location> --opt o=bind  # creates a Volume

docker volume inspect <volume-name>  # shows volume stats

# As volume is used to mount to a real-time running container 

docker run -d -p 8001:8001 --mount source=<volume-name>,target=<work-directory-name-of-container> <image-name>:latest 

# Secures your data in local server if ever container crashes or dies 

# Since we know containers automate apps,to automate containers we use docker compose !

sudo apt-get install docker-compose

# We can run multiple containers using docker compose with help of yaml file given as example !

docker compose up --force-recreate     # will run YAML file 

docker compose up -d --no-deps --build <service-name>  # For Jenkins CI , if i make changes to code while running

docker compose down     # will close all containers at once 

# If we want to push our image on docker we need to first login

docker login 

# Rename your image name 

docker image tag <old-name> <new-name> 

docker image push <new-name>


