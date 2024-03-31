#!/bin/bash

# Download the script from the URL
curl -o tinitiate_terminal.sh https://raw.githubusercontent.com/tinitiateprime/tinitiate-onboarding/main/software-installers/mac/terminal.sh

# Make the script executable
chmod +x tinitiate_terminal.sh

# Execute the script
./tinitiate_terminal.sh

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

# Install Oracle Java JDK (You may need to find a cask for Oracle JDK or use AdoptOpenJDK)
brew install --cask temurin

# Set Java environment variable
echo 'export JAVA_HOME="/usr/libexec/java_home"' >> ~/.zshrc
source ~/.zshrc

# Install IntelliJ IDEA Community Edition
brew install --cask intellij-idea-ce

# Install Java VS Code extensions
code --install-extension vscjava.vscode-java-pack

echo "Installation and setup complete."