# Dockerfile

FROM ubuntu:latest

# Prevent interactive prompts from appearing during package installation
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    python3 \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set the container to run an interactive shell by default
CMD ["/bin/bash"]