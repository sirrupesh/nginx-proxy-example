# Use Python slim image as base
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Install dependencies first (for better caching)
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy application code
COPY . .

# Command to run the application
CMD ["python", "main.py"]

# Expose the port that matches docker-compose configuration
EXPOSE 8000