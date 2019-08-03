# Build docker image
```bash
docker build -t image-hello-reactredux  .
```

# Run container
```bash
# run dettached mapping port 80 inside the container to port 8080
docker run --rm --name hello-reactredux  -P -p5000:5000 image-hello-reactredux
docker stop hello-reactredux 
```
