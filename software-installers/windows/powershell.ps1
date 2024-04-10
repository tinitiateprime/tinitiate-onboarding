# Check and install Chocolatey if not already installed
if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Host "Chocolatey is not installed. Installing Chocolatey..."
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    Write-Host "Chocolatey installed successfully."
} else {
    Write-Host "Chocolatey is already installed."
}

# Check and install PowerShell Core using Chocolatey if not already installed
if (-not (Get-Command pwsh -ErrorAction SilentlyContinue)) {
    Write-Host "PowerShell Core is not installed. Installing via Chocolatey..."
    choco install powershell-core -y
    Write-Host "PowerShell Core has been installed."
} else {
    Write-Host "PowerShell Core is already installed."
}

# Download the script from GitHub
$scriptUrl = "https://raw.githubusercontent.com/tinitiateprime/tinitiate-onboarding/main/software-installers/windows/common_softs.ps1"
$scriptPath = "$env:TEMP\downloaded_script.ps1"
Invoke-WebRequest -Uri $scriptUrl -OutFile $scriptPath

# Run the downloaded script as administrator
Start-Process -FilePath "pwsh" -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$scriptPath`"" -Verb RunAs