# Check if PowerShell Core is installed
if (-not (Get-Command pwsh -ErrorAction SilentlyContinue)) {
    Write-Host "PowerShell Core is not installed. Installing..."

    # Download and install the latest version of PowerShell Core
    $installerUrl = "https://aka.ms/install-powershell.ps1"
    Invoke-WebRequest -Uri $installerUrl -OutFile "$env:TEMP\install-powershell.ps1"
    & "$env:TEMP\install-powershell.ps1" -UseMSI

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