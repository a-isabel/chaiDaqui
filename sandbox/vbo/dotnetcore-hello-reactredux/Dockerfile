# with dotnetcore and nodejs
# FROM microsoft/dotnet:2.0-sdk
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install net-tools procps vim nano tree nodejs -y

RUN mkdir -p /app/hello-reactredux
COPY .  /app/hello-reactredux
WORKDIR /app/hello-reactredux
RUN dotnet clean
RUN dotnet build
RUN dotnet publish

WORKDIR /app/hello-reactredux/bin/Debug/netcoreapp2.2/publish/

EXPOSE 5000
EXPOSE 8000
EXPOSE 22
EXPOSE 80

CMD cd /app/hello-reactredux/bin/Debug/netcoreapp2.2/publish/ && dotnet hello-reactredux.dll

