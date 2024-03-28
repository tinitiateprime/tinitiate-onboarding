# Check if Chocolatey is installed
if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
    # Install Chocolatey
    Write-Host "Installing Chocolatey..."
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Failed to install Chocolatey. Exiting."
        exit 1
    }
}

# Define software packages to install
$packages = @(
    "python",
    "vscode",
    "python-vscode-extension-pack",  # Python extension pack for VS Code
    # Add more packages here if needed
)

# Install software packages
foreach ($package in $packages) {
    Write-Host "Installing $package..."
    choco install $package -y
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Failed to install $package. Exiting."
        exit 1
    }
}

# Set Python path variable
$pythonPath = (Get-Command python).Source
[Environment]::SetEnvironmentVariable("Path", "$($env:Path);$pythonPath", "User")

Write-Host "Installation completed successfully."
