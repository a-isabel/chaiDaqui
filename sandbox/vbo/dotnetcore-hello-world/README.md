# Create image for dotnetcore 2
```bash
docker build -t image-dotnetcore-2 .
```

# Build project hello world and run it inside docker container
```bash
docker run --name dotnet-hello-world -d image-dotnetcore-2
docker exec -it dotnet-hello-world bash
dotnet new console  --name "hello-world"
cd hello-world/
dotnet build
dotnet  /app/hello-world/bin/Debug/netcoreapp2.2/hello-world.dll
```

# Run container 
```bash
docker run --name dotnet-hello-world image-dotnetcore-2
docker stop dotnet-hello-world ; docker rm dotnet-hello-world
```

