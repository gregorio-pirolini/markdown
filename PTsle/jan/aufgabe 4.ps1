cls

cd $PSScriptRoot

. ./checkUser.ps1

$userInp = Read-Host "Welcher benutzer soll geprüft werden?"
$sizeD = $(Read-Host "Switch Size Aktivieren? (J/N)") -contains "J", "Ja"
$detailPara = ""
while($detailPara -notcontains ("All", "BySize", "ByPercent")) {
    $detailPara = Read-Host "Welche Details sollen Angezeigt werden? (All/BySize/ByPercent)"
}
$data = check-userprofile $userInp -size:$sizeD -detail $detailPara
$data | Select * | Format-Table