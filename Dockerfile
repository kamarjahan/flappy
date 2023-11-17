FROM ubuntu:20.04

# Install necessary dependencies
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    python3 \
    python3-pip \
    tigervnc-standalone-server

# Copy your Pygame code
COPY . /app

WORKDIR /app

# Expose the VNC port
EXPOSE 5901
