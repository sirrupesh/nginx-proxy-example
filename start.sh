#!/bin/bash

# This script builds and starts the nginx-proxy application with two services (app1 and app2)

# Build app1 container image
echo "Building app1 container image..."
docker build -t app1:latest ./app1

# Build app2 container image
echo "Building app2 container image..."
docker build -t app2:latest ./app2

# Stop any existing containers and start the services using docker compose
echo "Restarting all services..."
docker compose down && docker compose up -d