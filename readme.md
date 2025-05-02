# Microservices with Traefik Reverse Proxy

This project demonstrates a microservices architecture using Traefik as a reverse proxy, managing multiple services written in different languages.

## Services

- Python App 1 (`/app1`): Accessible at http://localhost:8080/app1
- Python App 2 (`/app2`): Accessible at http://localhost:8080/app2
- Ruby App (`/ruby`): Accessible at http://localhost:8080/ruby
- PHP App (`/php`): Accessible at http://localhost:8080/php
- Node.js App (`/node`): Accessible at http://localhost:8080/node

## Project Structure

```
.
├── docker-compose.yaml    # Main Docker Compose configuration
├── traefik.toml           # Traefik main configuration
├── start.sh               # Startup script
├── app1/                  # Python application 1
├── app2/                  # Python application 2
├── app3/                  # Ruby application
├── app4/                  # PHP application
└── app5/                  # Node.js application
```

## Features

- Automatic service discovery using Docker labels
- Traefik dashboard available at http://localhost:8081
- Load balancing (Python App 2 runs with 2 replicas)
- Path-based routing

## Prerequisites

- Docker
- Docker Compose
- Basic understanding of Traefik configuration

## Getting Started

1. Clone this repository
2. Make the start script executable:
   ```bash
   chmod +x start.sh
   ```
3. Run the start script to build and start all services:
   ```bash
   ./start.sh
   ```

The start script will:
- Build the Docker images for all applications
- Stop any existing containers (if running)
- Start all services using Docker Compose

Alternatively, you can manually run the services:
```bash
docker compose up -d
```

## Access Points

The services are available at:
- Python App 1: http://localhost:8080/app1
- Python App 2: http://localhost:8080/app2
- Ruby App: http://localhost:8080/ruby
- PHP App: http://localhost:8080/php
- Node.js App: http://localhost:8080/node

## Configuration

Traefik is configured with:
- Docker provider enabled
- HTTP entrypoint on port 80
- Insecure API enabled (dashboard)
- Automatic service discovery
- Path-based routing for all services

## Troubleshooting

If you cannot access the applications:
1. Verify that all containers are running: `docker compose ps`
2. Check the Traefik logs: `docker compose logs traefik`
3. Ensure the host entries are properly configured
4. Verify that port 8080 is not in use by another application

## Contributing

Feel free to submit issues and enhancement requests!

## License

This project is licensed under the MIT License.