# Check if Chocolatey is installed, and install it if not
if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Host "Chocolatey is not installed. Installing Chocolatey..."
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Check if Power BI is installed by looking for the executable
$powerBiPath = Get-Command "PBIDesktop.exe" -ErrorAction SilentlyContinue

if ($powerBiPath -eq $null) {
    # If Power BI is not installed, install it using Chocolatey
    Write-Host "Power BI is not installed. Installing Power BI..."
    choco install powerbi -y
} else {
    # If Power BI is installed, skip the installation
    Write-Host "Power BI is already installed. Skipping installation."
}