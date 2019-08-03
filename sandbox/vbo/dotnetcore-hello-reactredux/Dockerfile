# with dotnetcore and nodejs
# FROM microsoft/dotnet:2.0-sdk
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get install net-tools procps vim nano tree nodejs openssh-server -y

RUN mkdir -p /app/hello-reactredux
COPY appsettings.Development.json  /app/hello-reactredux
COPY appsettings.json  /app/hello-reactredux
COPY ClientApp/  /app/hello-reactredux
COPY Controllers/  /app/hello-reactredux
COPY hello-reactredux.csproj  /app/hello-reactredux
COPY Pages/  /app/hello-reactredux
COPY Program.cs  /app/hello-reactredux
COPY Properties/  /app/hello-reactredux
COPY Startup.cs /app/hello-reactredux
COPY run.sh /app/hello-reactredux

RUN cd /app/hello-reactredux && sh run.sh

EXPOSE 5000
EXPOSE 8000
EXPOSE 22
EXPOSE 80
CMD dotnet /app/hello-reactredux/bin/Debug/netcoreapp2.2/publish/hello-reactredux.dll

