# Check the current execution policy
$currentPolicy = Get-ExecutionPolicy

# List of policies in order of permissiveness
$policies = @('Unrestricted', 'RemoteSigned', 'AllSigned', 'Default', 'Restricted')

# Compare the current policy with 'RemoteSigned'
if ($policies.IndexOf($currentPolicy) -lt $policies.IndexOf('RemoteSigned')) {
    # Set the execution policy to 'RemoteSigned'
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
    Write-Host "Execution policy set to 'RemoteSigned'."
} else {
    Write-Host "Current execution policy is '$currentPolicy'. No change needed."
}

# Check if PowerShell is installed
if (-not (Get-Command pwsh -ErrorAction SilentlyContinue)) {
    Write-Host "PowerShell is not installed. Installing..."

    # Download and install the latest version of PowerShell
    $installerUrl = "https://aka.ms/install-powershell.ps1"
    Invoke-WebRequest -Uri $installerUrl -OutFile "$env:TEMP\install-powershell.ps1"
    & "$env:TEMP\install-powershell.ps1" -UseMSI

    Write-Host "PowerShell has been installed."
} else {
    Write-Host "PowerShell is already installed."
}

# Open the installed PowerShell as administrator and run the script from the GitHub raw content link
$scriptUrl = "https://raw.githubusercontent.com/tinitiateprime/tinitiate-onboarding/main/software-installers/windows/common_softs.ps1"
Start-Process -FilePath "pwsh" -ArgumentList "-NoProfile -ExecutionPolicy Bypass -Command `"Start-Process 'pwsh' -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command (Invoke-WebRequest -Uri $scriptUrl).Content' -Verb RunAs`"" -Verb RunAs