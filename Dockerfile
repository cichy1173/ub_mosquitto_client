# Use Ubuntu 24.04 as the base image
FROM ubuntu:24.04

# Set environment variables to avoid prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update packages and install required tools
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        mosquitto-clients \
        ca-certificates \
        openssl \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Default command (optional)
CMD ["bash"]

