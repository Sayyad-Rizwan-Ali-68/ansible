#!/bin/bash

# Update and upgrade the system
echo "Updating and upgrading the system..."
sudo apt update && sudo apt upgrade -y

# Install required dependencies
echo "Installing dependencies..."
sudo apt install -y software-properties-common

# Add Ansible PPA repository
echo "Adding Ansible PPA repository..."
sudo add-apt-repository --yes --update ppa:ansible/ansible

# Install Ansible
echo "Installing Ansible..."
sudo apt install -y ansible

# Verify Ansible installation
echo "Verifying Ansible installation..."
ansible --version
