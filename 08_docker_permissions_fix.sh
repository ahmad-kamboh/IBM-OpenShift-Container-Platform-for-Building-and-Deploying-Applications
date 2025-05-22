#!/bin/bash

# Add current user to the docker group
sudo usermod -aG docker $USER

# Apply group changes
newgrp docker

# Restart Docker service
sudo systemctl restart docker
