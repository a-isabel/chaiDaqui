# Use dev env
```
docker build -t image-dotnet-env .
docker run --name dotnet-env -d image-dotnet-env
docker exec -it dotnet-env bash
```

Inside the container dotnet command can be used. 

