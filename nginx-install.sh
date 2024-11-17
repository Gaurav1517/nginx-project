#!/bin/bash

# Script to install and configure NGINX
set -e  # Exit immediately if a command exits with a non-zero status

echo "Starting NGINX installation..."

# Step 1: Install the EPEL repository
echo "Installing EPEL repository..."
sudo yum install -y epel-release

# Step 2: Update the repository
echo "Updating the repository..."
sudo yum update -y

# Step 3: Install NGINX
echo "Installing NGINX..."
sudo yum install -y nginx

# Step 4: Verify the installation
echo "Verifying NGINX installation..."
sudo nginx -v

# Step 5: Enable and start the NGINX service
echo "Enabling and starting NGINX service..."
sudo systemctl enable nginx.service --now

# Step 6: Check the status of the NGINX service
echo "Checking NGINX service status..."
sudo systemctl status nginx.service

echo "NGINX installation and setup complete!"
