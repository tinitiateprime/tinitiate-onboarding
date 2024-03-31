# Download and execute the script from GitHub
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/tinitiateprime/tinitiate-onboarding/main/software-installers/windows/powershell.ps1" -OutFile "tinitiate-onboarding.ps1"
. .\tinitiate-onboarding.ps1

# Check for the latest version of PowerShell and start it as an administrator
$latestPSPath = (Get-Command pwsh).Source
Start-Process -FilePath $latestPSPath -ArgumentList "-NoExit", "-Command Start-Process PowerShell -Verb RunAs" -Wait

# In the new PowerShell instance, check if Oracle Java JDK and IntelliJ IDEA Community are installed and install them if necessary
if (-not (Get-Command java -ErrorAction SilentlyContinue)) {
    choco install -y openjdk
}

if (-not (Get-Command idea64 -ErrorAction SilentlyContinue)) {
    choco install -y intellijidea-community
}