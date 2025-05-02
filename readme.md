# Microservices with Traefik Reverse Proxy

This project demonstrates a microservices architecture using Traefik as a reverse proxy, managing multiple services written in different languages.

## Services

Each service is accessible through its own subdomain:
- Python App 1: http://app1.localhost:8080
- Python App 2: http://app2.localhost:8080
- Ruby App: http://ruby.localhost:8080
- PHP App: http://php.localhost:8080
- Node.js App: http://node.localhost:8080

## Project Structure

```
.
├── docker-compose.yaml    # Main Docker Compose configuration
├── start.sh              # Startup script
├── app1/                 # Python application 1
├── app2/                 # Python application 2
├── app3/                 # Ruby application
├── app4/                 # PHP application
└── app5/                 # Node.js application
```

## Features

- Automatic service discovery using Docker labels
- Traefik dashboard available at http://localhost:8081
- Load balancing (Python App 2 runs with 2 replicas)
- Host-based routing with automatic SSL termination
- Clean URL structure using subdomains

## Prerequisites

- Docker
- Docker Compose
- Basic understanding of Traefik configuration
- Local DNS resolution (add entries to /etc/hosts)

## Getting Started

1. Clone this repository
2. Add the following entries to your /etc/hosts file(optional):
   ```
   127.0.0.1    app1.localhost
   127.0.0.1    app2.localhost
   127.0.0.1    ruby.localhost
   127.0.0.1    php.localhost
   127.0.0.1    node.localhost
   ```
3. Make the start script executable:
   ```bash
   chmod +x start.sh
   ```
4. Run the start script to build and start all services:
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

The services are available at their respective subdomains:
- Python App 1: http://app1.localhost:8080
- Python App 2: http://app2.localhost:8080 (Load balanced across 2 instances)
- Ruby App: http://ruby.localhost:8080
- PHP App: http://php.localhost:8080
- Node.js App: http://node.localhost:8080

## Configuration

Traefik is configured with:
- Docker provider enabled
- HTTP entrypoint on port 80
- Insecure API enabled (dashboard)
- Automatic service discovery
- Host-based routing for all services
- Automatic container detection

## Troubleshooting

If you cannot access the applications:
1. Verify that all containers are running: `docker compose ps`
2. Check the Traefik logs: `docker compose logs traefik`
3. Ensure the host entries are properly configured in /etc/hosts
4. Verify that port 8080 is not in use by another application
5. Make sure you're using the correct subdomain for each service
6. Check that your browser is using the correct port (8080)

## Contributing

Feel free to submit issues and enhancement requests!

## License

This project is licensed under the MIT License.