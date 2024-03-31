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

# Install Python
brew install python

# Set Python environment variable
echo 'export PATH="/usr/local/opt/python/libexec/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# Install Python VS Code extensions
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-toolsai.jupyter

echo "Installation and setup complete."