# with dotnetcore and nodejs
# FROM microsoft/dotnet:2.0-sdk
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get install net-tools procps vim nano tree nodejs openssh-server -y

RUN mkdir -p /app/hello-world
COPY Program.cs /app/hello-world
COPY hello-world.csproj /app/hello-world
RUN cd /app/hello-world; dotnet build

EXPOSE 5000
EXPOSE 8000
EXPOSE 22
CMD dotnet /app/hello-world/bin/Debug/netcoreapp2.2/hello-world.dll

