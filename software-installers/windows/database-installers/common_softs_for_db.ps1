# Function to check if a package is installed using Chocolatey
function IsPackageInstalled($packageName) {
    $chocoListOutput = choco list --local-only --exact $packageName
    return $chocoListOutput -like "*$packageName*"
}

# Install Chocolatey if not already installed
if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Host "Installing Chocolatey..."
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    Write-Host "Chocolatey installed successfully."
}

# Install Docker if not already installed
if (-not (IsPackageInstalled 'docker-desktop')) {
    Write-Host "Installing Docker Desktop..."
    choco install docker-desktop -y
    choco install docker-cli
    Write-Host "Docker Desktop installed successfully."
} else {
    Write-Host "Docker Desktop is already installed. Skipping installation."
}

# Install DBeaver if not already installed
if (-not (IsPackageInstalled 'dbeaver')) {
    Write-Host "Installing DBeaver..."
    choco install dbeaver -y
    Write-Host "DBeaver installed successfully."
} else {
    Write-Host "DBeaver is already installed. Skipping installation."
}

# Install Microsoft Teams (new bootstrapper) if not already installed
if (-not (IsPackageInstalled 'microsoft-teams-new-bootstrapper')) {
    Write-Host "Installing Microsoft Teams..."
    choco install microsoft-teams-new-bootstrapper -y
    Write-Host "Microsoft Teams installed successfully."
} else {
    Write-Host "Microsoft Teams is already installed. Skipping installation."
}