#!/bin/bash

echo "Stopping any running containers..."
docker compose down

echo "Building and starting all services..."
docker compose up --build -d

echo "Services are starting..."
echo "You can access:"
echo "- Python App 1: http://app1.localhost:8080"
echo "- Python App 2: http://app2.localhost:8080"
echo "- Ruby App: http://ruby.localhost:8080"
echo "- PHP App: http://php.localhost:8080"
echo "- Node.js App: http://node.localhost:8080"
echo "- Traefik dashboard at http://localhost:8081"


echo -e "\nChecking service health..."
sleep 5
docker compose ps