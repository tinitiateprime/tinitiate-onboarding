# Function to check if a package is installed using Chocolatey
function IsPackageInstalled($packageName) {
    $chocoListOutput = choco list --local-only $packageName
    return $chocoListOutput -like "*$packageName*"
}

# Function to check if Visual Studio Code and an extension are installed
function IsExtensionInstalled($extensionId) {
    if (Get-Command code -ErrorAction SilentlyContinue) {
        $extension = code --list-extensions | Where-Object { $_ -eq $extensionId }
        return [bool]($extension)
    } else {
        Write-Host "Visual Studio Code is not installed. Skipping extension checks."
        return $false
    }
}

# Install Chocolatey if not already installed
if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Host "Installing Chocolatey..."
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    Write-Host "Chocolatey installed successfully."
}

# Install Microsoft Teams (work or school edition) if not already installed
if (-not (IsPackageInstalled 'microsoft-teams')) {
    Write-Host "Installing Microsoft Teams..."
    choco install microsoft-teams -y
    Write-Host "Microsoft Teams installed successfully."
} else {
    Write-Host "Microsoft Teams is already installed. Skipping installation."
}

# Install Git if not already installed
if (-not (IsPackageInstalled 'git')) {
    Write-Host "Installing Git..."
    choco install git -y
    Write-Host "Git installed successfully."
} else {
    Write-Host "Git is already installed. Skipping installation."
}

# Install Notepad++ if not already installed
if (-not (IsPackageInstalled 'notepadplusplus')) {
    Write-Host "Installing Notepad++..."
    choco install notepadplusplus -y
    Write-Host "Notepad++ installed successfully."
} else {
    Write-Host "Notepad++ is already installed. Skipping installation."
}

# Install Visual Studio Code if not already installed
if (-not (IsPackageInstalled 'vscode')) {
    Write-Host "Installing Visual Studio Code..."
    choco install vscode -y
    Write-Host "Visual Studio Code installed successfully."
} else {
    Write-Host "Visual Studio Code is already installed. Skipping installation."
}

# Install Visual Studio Code extensions
$extensions = @(
    'alefragnani.project-manager',
    'bierner.markdown-preview-github-styles',
    'evilz.vscode-reveal',
    'gera2ld.markmap-vscode',
    'marp-team.marp-vscode',
    'ms-vscode.notepadplusplus-keybindings',
    'qcz.text-power-tools',
    'ms-vscode.live-server'
)

foreach ($extension in $extensions) {
    if (-not (IsExtensionInstalled $extension)) {
        Write-Host "Installing extension: $extension..."
        code --install-extension $extension
        Write-Host "Extension $extension installed successfully."
    } else {
        Write-Host "Extension $extension is already installed. Skipping installation."
    }
}