#!/bin/bash

# Update system and install Docker
sudo apt update -y
sudo apt install -y docker.io

# Start and enable Docker
sudo systemctl start docker
sudo systemctl enable docker

# Add current user to docker group
sudo usermod -aG docker $USER

# Create working directory
mkdir grafana-loki
cd grafana-loki

# Download or create docker-compose.yml and promtail config here
# (Assuming files are already present)

# Start the stack
sudo docker-compose up -d

# Check running containers
docker ps

# Access Grafana at http://<EC2-PUBLIC-IP>:3000
