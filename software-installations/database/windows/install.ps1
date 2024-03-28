# Check if Chocolatey is installed
if (!(Test-Path 'C:\ProgramData\chocolatey\choco.exe')) {
    # If Chocolatey is not installed, install it
    Write-Host "Chocolatey is not installed. Installing Chocolatey..."
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Install Docker using Chocolatey
Write-Host "Installing Docker..."
choco install docker-desktop -y

# Install DBeaver using Chocolatey
Write-Host "Installing DBeaver..."
choco install dbeaver -y
