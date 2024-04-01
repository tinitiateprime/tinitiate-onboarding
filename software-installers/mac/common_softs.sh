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

# Install Git
brew install git

# Install Visual Studio Code
brew install --cask visual-studio-code

# Install Microsoft Teams
brew install --cask microsoft-teams

# VS Code extensions to install
extensions=(
    "alefragnani.project-manager"
    "bierner.markdown-preview-github-styles"
    "evilz.vscode-reveal"
    "gera2ld.markmap-vscode"
    "marp-team.marp-vscode"
    "ms-vscode.notepadplusplus-keybindings"
    "qcz.text-power-tools"
    "ms-vscode.live-server"
)

# Install VS Code extensions
for extension in "${extensions[@]}"
do
    code --install-extension "$extension" --force
done

echo "Installation complete."