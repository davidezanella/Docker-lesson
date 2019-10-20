# Example 1
Build the docker image giving it a name and a tag.
```
docker image build -t example1:1.0 .
```
Run the docker container previously created and tell it to forward the port 3000 to the hosting machine and give it a name.
```
docker container run --publish 3000:3000 --detach --name example1 example1:1.0
```
From another shell show the containers.
```
docker container ls
```
Try to access the web page served from the node.js app navigating to `localhost:3000`.

Remove the running container previously created to stop the program.
```
docker container rm --force example1 
```
