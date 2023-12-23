#!/bin/bash

# Script for deploying Docker image to a server

# Set the name for your Docker image
IMAGE_NAME="capstoneimage"

# Set the version or tag for your Docker image
IMAGE_TAG="latest"

# Set the address of your deployment server
SERVER_ADDRESS="35.154.181.167"

# Set the port on which your application is running inside the container
CONTAINER_PORT="3000"

# Set the port on the server where you want to map the container port
SERVER_PORT="80"

# Pull the Docker image on the server
docker pull "${IMAGE_NAME}:${IMAGE_TAG}"

# Run the Docker container on the server
docker run -itd -p "${SERVER_PORT}:${CONTAINER_PORT}" "${IMAGE_NAME}:${IMAGE_TAG}"
