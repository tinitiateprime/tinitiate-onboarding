# Function to check if a software is installed
function IsInstalled {
    param(
        [string]$packageName
    )
    $installed = choco list --local-only | Select-String -Pattern "^$packageName\s"
    return [bool]($installed -match $packageName)
}

# Function to install a software using Chocolatey
function InstallIfNotInstalled {
    param(
        [string]$packageName
    )
    if (!(IsInstalled $packageName)) {
        Write-Host "Installing $packageName..."
        choco install $packageName -y
    } else {
        Write-Host "$packageName is already installed."
    }
}

# Check and install Chocolatey if not installed
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Host "Installing Chocolatey..."
    Set-ExecutionPolicy Bypass -Scope Process -Force
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Check and install Oracle Java JDK
InstallIfNotInstalled "jdk8"

# Set JAVA_HOME environment variable
$javaHome = (Get-ChildItem "$env:ProgramFiles\Java\" -Name | Where-Object { $_ -match "^jdk.*" } | Sort-Object)[-1]
$javaHomePath = "$env:ProgramFiles\Java\$javaHome"
[Environment]::SetEnvironmentVariable("JAVA_HOME", $javaHomePath, [EnvironmentVariableTarget]::Machine)
$env:Path += ";$javaHomePath\bin"

# Check and install IntelliJ IDEA
InstallIfNotInstalled "intellijidea-community"

# Check and install Visual Studio Code
InstallIfNotInstalled "vscode"

Write-Host "Installation completed successfully."
