# Example 3

We are going to make a load balancer using Nginx.

We use an Nginx container as a web server and another one as a proxy to the first one. In this way, we can use the Docker’s embedded DNS server as a load balancer using a round-robin algorithm.

Build the containers.
```
docker-compose build
```

Start the containers.
```
docker-compose up -d
```

Navigate to `localhost:4000/index.html` and see if the web container is responding.

Stop the server and run it using 5 web containers.
```
docker-compose up -d --scale web=5
```

This works thanks to the `nginx.conf` file which tells the Nginx proxy to redirect to the `web` URL.
