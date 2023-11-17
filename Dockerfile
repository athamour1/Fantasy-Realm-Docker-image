FROM openjdk:18.0.2.1-buster

# Set the working directory in the container
WORKDIR /root

# Install tmux
RUN apt-get update && apt-get install -y tmux

# Copy the folder with correct permissions
COPY ./Fantasy_Realm_Server_Pack_v3 /root/Fantasy_Realm_Server_Pack_v3

# Expose the default Minecraft server port
EXPOSE 25565

# Set the working directory in the containers
WORKDIR /root/Fantasy_Realm_Server_Pack_v3

# Accept EULA terms
RUN echo eula=true > eula.txt

# Command to run when the container starts
CMD ["tmux", "new-session", "-s", "minecraft", "bash", "start.sh"]