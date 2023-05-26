#!/bin/bash

# Set timezone
timedatectl set-timezone Asia/Jakarta

# Update and upgrade
apt update
apt upgrade -y

# Install required packages
apt install -y git curl zip python3 python3-pip

# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# Add user to the docker group (optional, for non-root user)
# usermod -aG docker $USER

# Cleanup
rm get-docker.sh

echo "Server setup complete."
