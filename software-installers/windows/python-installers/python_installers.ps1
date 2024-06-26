# Step 1: Download the script from the URL
$scriptUrl = "https://github.com/tinitiateprime/tinitiate-onboarding/raw/main/software-installers/windows/powershell.ps1"
Invoke-WebRequest -Uri $scriptUrl -OutFile "temp_script.ps1"

# Step 2: Execute the script with Bypass execution policy
& powershell -ExecutionPolicy Bypass -File "temp_script.ps1"
Remove-Item "temp_script.ps1" -Force

# Step 3: Open a new PowerShell instance as Administrator
$scriptBlock = {
    # Step 4: Check and install Python
    if (-not (Get-Command python -ErrorAction SilentlyContinue)) {
        Write-Host "Python is not installed. Installing Python..."
        choco install python -y

        # Get the Python installation path from Chocolatey
        $pythonPath = (Get-Command python).Source.Replace('\python.exe', '')

        # Prepend Python to the system Path environment variable
        [Environment]::SetEnvironmentVariable("Path", "$pythonPath;$env:Path", [EnvironmentVariableTarget]::Machine)
    } else {
        Write-Host "Python is already installed."
    }

    # Step 5: Install VS Code extensions for Python
    code --install-extension ms-python.python
    code --install-extension ms-python.python-extension-pack
}

# Convert the script block to a Base64-encoded string for passing to the new PowerShell instance
$encodedScriptBlock = [Convert]::ToBase64String([Text.Encoding]::Unicode.GetBytes($scriptBlock))

# Start the new PowerShell instance as Administrator and execute the script block
Start-Process -FilePath "pwsh" -ArgumentList "-NoProfile", "-ExecutionPolicy Bypass", "-EncodedCommand $encodedScriptBlock" -Verb RunAs