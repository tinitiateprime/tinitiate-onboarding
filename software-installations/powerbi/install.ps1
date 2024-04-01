# Check if Chocolatey is installed
if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Host "Chocolatey is not installed. Installing Chocolatey..."
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
} else {
    Write-Host "Chocolatey is already installed."
}

# Check if PowerBI is installed
$powerbiInstalled = choco list --local-only | Select-String "powerbi"

if (-not $powerbiInstalled) {
    Write-Host "PowerBI is not installed. Installing PowerBI..."
    choco install powerbi-desktop -y
} else {
    Write-Host "PowerBI is already installed."
}