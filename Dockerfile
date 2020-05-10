#take the .net core runtime as base image and 
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS base
WORKDIR /app

#we already have a published image that we want to run using runtime
COPY ./DockerizeConsoleApp/pub/* ./

#dotnet run 
ENTRYPOINT ["dotnet","DockerizeConsoleApp.dll"]