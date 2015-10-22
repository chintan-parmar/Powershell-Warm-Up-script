Start-Transcript -Path "e:\temp\#$(Get-Date -Format ddMMyy-HHmm ).log"

$textfile = "e:\temp\url.txt"
 
ForEach ($site in Get-Content $textfile) 
{
Invoke-WebRequest -Uri $site -usedefaultcredentials
Start-Sleep -Seconds 05
}


Stop-Transcript