#!/bin/bash

echo "Stopping any running containers..."
docker compose down

echo "Building and starting all services..."
docker compose up --build -d

echo "Services are starting..."
echo "You can access:"
echo "- Applications at http://localhost:8080/{app1,app2,ruby,php,node}"
echo "- Traefik dashboard at http://localhost:8081"

echo "Checking service health..."
sleep 5
docker compose ps