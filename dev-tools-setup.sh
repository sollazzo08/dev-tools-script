#!/bin/bash

# Script to set up a new macOS system with the required tools

echo "Starting macOS setup..."

# Check if Homebrew is installed
if ! command -v brew &>/dev/null; then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

# Update Homebrew
echo "Updating Homebrew..."
brew update

# Install Version Control Tools
echo "Installing version control tools..."
brew install git
brew install gh

# Install Programming Languages
echo "Installing programming languages..."
brew install node
brew install nvm
brew install python
brew install go

# Install Databases
echo "Installing databases..."
brew install postgresql

# Install Networking Tools
echo "Installing networking tools..."
brew install wget
brew install curl
brew install nmap

# Install Security Tools
echo "Installing security tools..."
brew install openssl
brew install wireshark

# Install Applications
echo "Installing applications..."
brew install --cask spotify
brew install --cask google-chrome
brew install --cask visual-studio-code
brew install --cask discord

echo "macOS setup completed!"

