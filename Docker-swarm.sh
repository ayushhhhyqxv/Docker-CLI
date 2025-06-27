# Since Docker compose is not directly used in production because of its own reason,Docker Swarm comes into play

# We need to define worker as well as leader/manager first 

docker swarm init  # run this command only on leader's server 

# It will give docker token for workers, join these workers using this token

docker node ls # shows leaders and workers,availability and status

# Only worker is trying to join add the manager address port in security group else worker wont join

# Here instead of compose file we are required to make stack(just like container) using YAML file only same as compose YAML file

docker stack deploy -c <compose.yaml-file> <your-stack-name>  #The base command for deploying a complete application stack to a Docker Swarm cluster

# creates services, networks, and volumes defined in your Compose file

# key difference in compose file of both is that in this we have to give image directly instead of building it live just like docker compose

# to create a single service running on multiple devices using master and workers (swarm environment)

docker service create --name <service-name> --replicas 3 --publish 8001:8001 <image-docker-hub-name>:latest

# Replicas are send automatically send on workers depending on there capability
# They are also auto-healed

