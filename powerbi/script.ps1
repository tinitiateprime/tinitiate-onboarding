# Define the URL for the Power BI Desktop installer
$installerUrl = "https://download.microsoft.com/download/E/7/7/E777D1B3-DC94-4DE7-BDE3-9D354C4D7E6F/PBIDesktopSetup_x64.exe"

# Define the path where the installer will be saved
$installerPath = "C:\Temp\PBIDesktopSetup_x64.exe"

# Create the directory if it doesn't exist
if (-Not (Test-Path "C:\Temp")) {
    New-Item -ItemType Directory -Path "C:\Temp"
}

# Download the installer
Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath

# Execute the installer
Start-Process -FilePath $installerPath -Wait

# Cleanup the installer
Remove-Item -Path $installerPath
