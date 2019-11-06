# Example 2

Build the docker-compose config which contains 2 images, a postgres DB and a node.js webserver.
```
docker-compose build
```

Start the containers.
```
docker-compose up -d
```

Navigate to `localhost:3000` and see if the webserver works and is able to communicate with psql.