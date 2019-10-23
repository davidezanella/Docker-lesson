# Docker useful commands
Build a docker image using the dockerfile in the current directory. Assign a name and a tag.
```
docker image build -t name:tag .
```

Run a docker image. Use `--publish port_source:port_dest` option to expose a port from the container.
Use `--detach` option to detach the container.
```
docker container run --name container-name name:tag
```

List all the docker containers.
```
docker container ls
```

List all the images already downloaded.
```
docker images
```

Stop a running container.
```
docker container stop container-name 
```

Remove a container. Use `--force` option to force removing.
```
docker container rm container-name 
```

## Docker-compose
Build a docker-compose file.
```
docker-compose build
```

Start the docker-compose file. Use `-d` option to detach the execution. Use `--scale container=N` option to scale a container.
```
docker-compose up 
```
