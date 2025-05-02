# Nginx Reverse Proxy with Multi-Service Setup

This project demonstrates a multi-service architecture using Nginx as a reverse proxy, coordinating traffic between multiple applications built with different technologies.

## Services

The setup includes the following services:
- **Nginx**: Reverse proxy (Port 8080)
- **Python App 1**: Python application (Internal port 8000)
- **Python App 2**: Python application with 2 replicas (Internal port 8000)
- **Node.js App**: Node.js application (Internal port 3000)
- **Ruby App**: Ruby application (Internal port 8000)
- **PHP App**: PHP application (Internal port 80)

## Project Structure

```
.
├── docker-compose.yaml    # Main Docker Compose configuration
├── nginx.conf            # Nginx main configuration
├── local.conf           # Local Nginx configuration
├── start.sh            # Startup script
├── app1/              # Python application 1
├── app2/              # Python application 2
├── app3/              # Ruby application
├── app4/              # PHP application
└── app5/              # Node.js application
```

## Features

- Host-based routing using Nginx
- Multiple applications running in separate containers
- Docker Compose for container orchestration
- Custom network configuration
- Volume mounting for Nginx configuration

## Prerequisites

- Docker
- Docker Compose
- Basic understanding of Nginx configuration

## Getting Started

1. Clone this repository
2. Add the following entries to your `/etc/hosts` file:
   ```
   127.0.0.1    app1.localhost
   127.0.0.1    app2.localhost
   127.0.0.1    node-app.localhost
   127.0.0.1    ruby-app.localhost
   127.0.0.1    php-app.localhost
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

The services are available at:
- Python App 1: http://app1.localhost:8080
- Python App 2: http://app2.localhost:8080
- Node.js App: http://node-app.localhost:8080
- Ruby App: http://ruby-app.localhost:8080
- PHP App: http://php-app.localhost:8080

## Configuration

- The main Nginx configuration is in `nginx.conf`
- Additional local settings are in `local.conf`
- Service configurations are defined in `docker-compose.yaml`

## Troubleshooting

If you cannot access the applications:
1. Verify that all containers are running: `docker compose ps`
2. Check the Nginx logs: `docker compose logs nginx-proxy`
3. Ensure the host entries are properly configured
4. Verify that port 8080 is not in use by another application

## Contributing

Feel free to submit issues and enhancement requests!

## License

This project is licensed under the MIT License.