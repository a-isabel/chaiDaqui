#!/bin/sh
cd /app/hello-reactredux 
ls -lah
dotnet clean
dotnet build 
dotnet publish
