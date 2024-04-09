# Download and execute the script from GitHub
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/tinitiateprime/tinitiate-onboarding/main/software-installers/windows/powershell.ps1" -OutFile "tinitiate-onboarding.ps1"
. .\tinitiate-onboarding.ps1
Remove-Item "tinitiate-onboarding.ps1" -Force

# Define a script block for installations
$installationScript = {
    # Check if Oracle Java JDK and IntelliJ IDEA Community are installed and install them if necessary
    if (-not (Get-Command java -ErrorAction SilentlyContinue)) {
        choco install -y openjdk
    }

    if (-not (Get-Command idea64 -ErrorAction SilentlyContinue)) {
        choco install -y intellijidea-community
    }

    # Check if Visual Studio Code is installed and install it if necessary
    if (-not (Get-Command code -ErrorAction SilentlyContinue)) {
        choco install -y vscode
    }

    # Install Java VS Code extensions
    code --install-extension vscjava.vscode-java-pack --force
}

# Convert the script block to a Base64-encoded string for passing to the new PowerShell instance
$encodedScript = [Convert]::ToBase64String([Text.Encoding]::Unicode.GetBytes($installationScript))

# Start a new PowerShell instance as Administrator and execute the script block
Start-Process -FilePath "powershell.exe" -ArgumentList "-NoProfile", "-EncodedCommand $encodedScript" -Verb RunAs