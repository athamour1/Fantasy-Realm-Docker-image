# Docker Container for Fantasy Realm v3

This repo created to demonstrate on how to create a docker container to run a modded minecraft server. In this instance for example i will deploy Fantasy Realm v3 that needs java version 18, so i used openJDK **18.0.2.1**.

## How to run the docker compose stack

First of all download the server zip from [here](https://mediafilez.forgecdn.net/files/4787/577/Fantasy_Realm_Server_Pack_v3.zip) and unzip it.

```bash
wget https://mediafilez.forgecdn.net/files/4787/577/Fantasy_Realm_Server_Pack_v3.zip
unzip Fantasy_Realm_Server_Pack_v3.zip -d Fantasy_Realm_Server_Pack_v3
```

And then deploy the stack.

```bash
docker compose up -d
```

To attach in the minecraft console use the following command (or you can use something like portainer)

```bash
docker exec -it forge_mods_test-minecraft-1 tmux attach -t minecraft
```