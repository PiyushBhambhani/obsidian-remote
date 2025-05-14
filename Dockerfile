FROM ghcr.io/sytone/obsidian-remote:latest

# Create required directories
RUN mkdir -p /vaults /config

# Set up volumes for persistence
VOLUME /vaults
VOLUME /config

# Expose the web port
EXPOSE 8080
