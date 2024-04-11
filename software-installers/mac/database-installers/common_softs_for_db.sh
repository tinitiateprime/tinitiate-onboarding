#!/bin/bash

# Check if Homebrew is installed
if ! command -v brew &> /dev/null
then
    echo "Homebrew not installed. Installing now..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

# Update Homebrew
brew update

# Install Docker Desktop
brew install --cask docker

# Install DBeaver
brew install --cask dbeaver-community

# Install Microsoft Teams (Work or School)
brew install --cask microsoft-teams

echo "Installation complete."