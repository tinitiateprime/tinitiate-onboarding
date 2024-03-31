# Check if PowerShell is installed
if (-not (Get-Command powershell -ErrorAction SilentlyContinue)) {
    Write-Host "PowerShell is not installed. Installing..."
    
    # Install the latest version of PowerShell
    $installScriptUrl = "https://aka.ms/install-powershell.ps1"
    Invoke-WebRequest -Uri $installScriptUrl -OutFile "$env:TEMP\install-powershell.ps1"
    Invoke-Expression -Command "$env:TEMP\install-powershell.ps1"
} else {
    Write-Host "PowerShell is already installed."
}

# Open PowerShell as administrator and run the script from the web link
Start-Process -FilePath "powershell" -ArgumentList "-NoProfile -ExecutionPolicy Bypass -Command `"Start-Process 'powershell' -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command (New-Object Net.WebClient).DownloadString('https://example.com/your_script.ps1')' -Verb RunAs`"" -Verb RunAs