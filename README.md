# Docker Container for Fantasy Realm v3

This repo created to demonstrate on how to create a docker container to run a modded minecraft server. In this instance for example i will deploy Fantasy Realm v3 that needs java version 18, so i used openJDK **18.0.2.1**.

## How to build the docker image

First of all download the server zip from [here](https://mediafilez.forgecdn.net/files/4787/577/Fantasy_Realm_Server_Pack_v3.zip) and unzip it.

```bash
wget https://mediafilez.forgecdn.net/files/4787/577/Fantasy_Realm_Server_Pack_v3.zip
unzip Fantasy_Realm_Server_Pack_v3.zip -d Fantasy_Realm_Server_Pack_v3
```

## Deploy with docker compose

The following is the docker-compose:

```yaml
version: "3"

volumes:
  minecraft: {}

services:
  minecraft:
    build: thanosmourtk/fantasy_realm_server:latest
    ports:
      - 25565:25565
    tty: true
    stdin_open: true
    restart: unless-stopped
    volumes:
      - minecraft:/root/Fantasy_Realm_Server_Pack_v3
```

And then deploy the stack.

```bash
docker compose up -d
```

To attach in the minecraft console use the following command (or you can use something like portainer)

```bash
docker exec -it forge_mods_test-minecraft-1 tmux attach -t minecraft
```