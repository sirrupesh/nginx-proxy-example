#!/bin/bash

# Start script for the nginx-proxy multi-service environment
# This script ensures all containers are rebuilt and started fresh

# Stop any running containers and remove them
docker-compose down

# Build and start all services defined in docker-compose.yaml
# The -d flag runs containers in detached mode (background)
docker-compose up --build -d

# Display the status of all running containers
docker-compose ps