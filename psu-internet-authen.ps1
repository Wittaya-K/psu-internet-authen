param (
    [string]$USERNAME,
    [string]$PASSWORD
)

if (-not $USERNAME -or -not $PASSWORD) {
    Write-Host "Invalid arguments"
    Write-Host "Usage: .\psu-internet-authen.ps1 USERNAME PASSWORD"
    exit 1
}

$URL = "https://cp-xml-40g.psu.ac.th/php/action_page.php"
$Headers = @{
    "User-Agent" = "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:135.0) Gecko/20100101 Firefox/135.0"
    "Accept" = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
    "Content-Type" = "application/x-www-form-urlencoded"
    "Origin" = "https://cp-xml-40g.psu.ac.th"
    "Referer" = "https://cp-xml-40g.psu.ac.th/php/uid.php"
}

$PostData = "username=$USERNAME&password=$PASSWORD&login="
Invoke-WebRequest -Uri $URL -Method Post -Headers $Headers -Body $PostData

Write-Host "Login request sent!"
