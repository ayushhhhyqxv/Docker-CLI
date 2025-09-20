cd \mnt\Docker-CLI      # Change to your file directory

docker-compse pull              # Downloads images from all services
docker-compose up -d --build

# -d -> Runs the containers in detached mode
# --build -> Rebuilds all the images again even if previous image exists

docker-compose ps -a        # Lists all the running and dead containers
docker-compose logs -f      # View all the logs at real time
docker-compose config       # Displays file configuration

docker-compose run <service-name> <command>     # Creates a temporary container to run the command
docker-compose exec <service-name> <command>    # Runs the command in an existing container


# Handling individual services from the YAML file

docker-compose start <service-name>     # Starts a service
docker-compose stop <service-name>      # Stops a service

docker-compose restart <service-name>   # Restarts a service

docker-compose build <service-name>     # Builds or rebuilds the images

docker-compose images                   # Lists all the images 

docker-compose pause                    # Pauses all services
docker-compose unpause                  # Resumes all services

docker-compose rm <service-name>        # Removes all stopped containers

docker-compose down         # Stops and removes all the containers and networks created
                            # -v for removing volumes

# To clean up all unused Docker resources (containers, networks, images, and build cache)
docker system prune