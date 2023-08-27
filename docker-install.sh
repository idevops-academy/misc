#!/bin/bash

# Update the package database
sudo dnf update -y

# Install Docker
sudo dnf install -y docker

# Start and enable Docker
sudo systemctl start docker
sudo systemctl enable docker

# Check Docker version
docker --version

# Add the current user to the docker group
sudo usermod -aG docker $USER

# Inform the user to log out and log back in for group changes to take effect
echo "Please log out and log back in for the group changes to take effect."
