# Check if Power BI Desktop is installed
$powerbi = Get-Package -Name "Microsoft Power BI Desktop" -ErrorAction SilentlyContinue

# Install Power BI Desktop using Chocolatey if not installed
if ($powerbi -eq $null) {
    Write-Host "Power BI Desktop is not installed. Installing..."
    choco install powerbi --version 2.127.1080.0 -y
} else {
    Write-Host "Power BI Desktop is already installed."
}