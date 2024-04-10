# Step 1: Download the script from the URL
$scriptUrl = "https://raw.githubusercontent.com/tinitiateprime/tinitiate-onboarding/main/software-installers/windows/powershell.ps1"
Invoke-WebRequest -Uri $scriptUrl -OutFile "tinitiate-onboarding.ps1"

# Step 2: Execute the script with Bypass execution policy
& powershell -ExecutionPolicy Bypass -File "tinitiate-onboarding.ps1"
Remove-Item "tinitiate-onboarding.ps1" -Force

# Step 3: Open a new PowerShell instance as Administrator
$scriptBlock = {
    # Step 4: Check and install Oracle Java JDK and IntelliJ IDEA Community
    if (-not (Get-Command java -ErrorAction SilentlyContinue)) {
        Write-Host "Oracle Java JDK is not installed. Installing..."
        choco install -y openjdk

        # Set the JAVA_HOME environment variable and update the PATH
        $javaHome = (Get-Command java).Source.Replace('\bin\java.exe', '')
        [Environment]::SetEnvironmentVariable("JAVA_HOME", $javaHome, [EnvironmentVariableTarget]::Machine)
        [Environment]::SetEnvironmentVariable("Path", "$env:Path;$javaHome\bin", [EnvironmentVariableTarget]::Machine)
    } else {
        Write-Host "Oracle Java JDK is already installed."
    }

    if (-not (Get-Command idea64 -ErrorAction SilentlyContinue)) {
        Write-Host "IntelliJ IDEA Community is not installed. Installing..."
        choco install -y intellijidea-community

        # Set the INTELLIJ_HOME environment variable
        $intellijHome = (Get-Command idea64).Source.Replace('\bin\idea64.exe', '')
        [Environment]::SetEnvironmentVariable("INTELLIJ_HOME", $intellijHome, [EnvironmentVariableTarget]::Machine)
    } else {
        Write-Host "IntelliJ IDEA Community is already installed."
    }

    # Step 5: Install Java extensions for Visual Studio Code
    Write-Host "Installing Java extensions for Visual Studio Code..."
    code --install-extension vscjava.vscode-java-pack --force
}

# Convert the script block to a Base64-encoded string for passing to the new PowerShell instance
$encodedScriptBlock = [Convert]::ToBase64String([Text.Encoding]::Unicode.GetBytes($scriptBlock))

# Start the new PowerShell instance as Administrator and execute the script block
Start-Process -FilePath "pwsh" -ArgumentList "-NoProfile", "-ExecutionPolicy Bypass", "-EncodedCommand $encodedScriptBlock" -Verb RunAs