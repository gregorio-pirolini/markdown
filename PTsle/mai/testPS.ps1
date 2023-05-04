#proxi
$proxyPath = Get-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings"
$px = $proxyPath.ProxyServer
$px
Write-Host "`$px is $px";

# $regPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings"
# $regProperty = "ProxyServer"

# if ((Test-Path $regPath) -and (Get-ItemProperty $regPath -Name $regProperty -ErrorAction SilentlyContinue)) {
#     $proxyServer = (Get-ItemProperty $regPath -Name $regProperty).$regProperty
#     Write-Host "Proxy Server: $proxyServer"
# } else {
#     Write-Host "Proxy settings not found"
# }