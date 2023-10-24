FROM mcr.microsoft.com/dotnet/aspnet:7.0 as base
WORKDIR /appcloud

FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
COPY . /src
WORKDIR /src
RUN dotnet restore "appcloud.csproj"
RUN dotnet build "appcloud.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "appcloud.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "appcloud.dll"]








