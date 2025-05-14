FROM ghcr.io/sytone/obsidian-remote:latest

# Set working directory
WORKDIR /app

# Create directories for persistence
RUN mkdir -p /vaults /config

# Set environment variables explicitly
ENV PUID=1000
ENV PGID=1000
ENV TZ=America/Los_Angeles

# Expose the web port
EXPOSE 8080

# Make sure we start the right process
CMD ["bash", "-c", "node /app/server.js"]
