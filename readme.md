# Nginx Proxy Configuration Example

This project demonstrates how to set up a reverse proxy using Nginx with Docker Compose, implementing host-based routing for multiple applications.

## Project Structure

```
.
├── docker-compose.yaml    # Docker Compose configuration
├── nginx.conf            # Nginx proxy configuration
├── readme.md
├── start.sh
├── app1/                 # First Python application
│   ├── Dockerfile
│   ├── main.py
│   └── requirements.txt
└── app2/                 # Second Python application
    ├── Dockerfile
    ├── main.py
    └── requirements.txt
```

## Features

- Host-based routing using Nginx
- Multiple Python applications running in separate containers
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
- Build the Docker images for both applications
- Stop any existing containers (if running)
- Start all services using Docker Compose

Alternatively, you can manually run the services:
```bash
docker compose up -d
```

## Accessing the Applications

- App1: http://app1.localhost:8080
- App2: http://app2.localhost:8080

## Configuration Details

### Nginx Configuration

The Nginx configuration implements host-based routing, directing traffic based on the domain name:
- Requests to `app1.localhost` are routed to the app1 container
- Requests to `app2.localhost` are routed to the app2 container

### Docker Compose Configuration

The project uses Docker Compose to manage:
- Three containers: app1, app2, and nginx-proxy
- A custom network for container communication
- Port mapping (8080:80) for the Nginx proxy
- Volume mounting for the Nginx configuration

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