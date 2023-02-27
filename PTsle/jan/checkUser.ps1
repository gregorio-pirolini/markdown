
function Check-Userprofile() {
    param(
        [Parameter(Mandatory=$true, Position=0)]
        [alias("user", "n")]
        [string]$name,
        [switch]
        [alias("length", "s")]
        $size,
        [ValidateSet("All", "BySize", "byPercent")]
        [string]$detail = "All"
    )
    $homeverzeichnis = (Get-WmiObject Win32_UserProfile | Where-Object {$_.LocalPath -like "*$name"}).LocalPath
    Write-Host "Homeverzeichnis von $name ist $homeverzeichnis, Scanne Daten ein"
    $files = Get-Childitem -Path $homeverzeichnis -Recurse -Force -File -ErrorAction SilentlyContinue
    Write-Host "Scan erfolgreich, werte Daten aus."
    $sizeData = 0
    $allFiles = 0
    $ltKiB = 0
    $ltMiB = 0
    $ltGiB = 0
    $gtGiB = 0
    foreach($file in $files) {
        $sizeData += $file.Length
        if ($file.Length -lt [Math]::Pow(1024, 1)) {
            $ltKiB += 1
            $allFiles += 1
        } elseif ($file.Length -lt [Math]::Pow(1024, 2)) {
            $ltMiB += 1
            $allFiles += 1
        } elseif ($file.Length -lt [Math]::Pow(1024, 3)) {
            $ltGiB += 1
            $allFiles += 1
        } else {
            $gtGiB += 1
            $allFiles += 1
        }
    }
    Write-Host "test: $allFiles, $ltKiB, $ltMiB, $ltGiB, $gtGiB"
    $res = @{}
    if ($size) {
        $sizeData = getSize $sizeData
        $res | Add-Member -NotePropertyName "Length of All" -NotePropertyValue "$($sizeData.size) $($sizeData.sizeValue)"
    }
    if ($detail -eq "All") {
        $res | Add-Member -NotePropertyName "All" -NotePropertyValue $files.Length
    } elseif ($detail -eq "BySize") {
        $res | Add-Member -NotePropertyName "ltKiB" -NotePropertyValue $ltKiB
        $res | Add-Member -NotePropertyName "ltMiB" -NotePropertyValue $ltMiB
        $res | Add-Member -NotePropertyName "ltGiB" -NotePropertyValue $ltGiB
        $res | Add-Member -NotePropertyName "gtKiB" -NotePropertyValue $gtGiB
    } else {
        $res | Add-Member -NotePropertyName "ltKiB" -NotePropertyValue ([String]$($ltKiB/$allFiles*100) + "%")
        $res | Add-Member -NotePropertyName "ltMiB" -NotePropertyValue ([String]$($ltMiB/$allFiles*100) + "%")
        $res | Add-Member -NotePropertyName "ltGiB" -NotePropertyValue ([String]$($ltGiB/$allFiles*100) + "%")
        $res | Add-Member -NotePropertyName "gtKiB" -NotePropertyValue ([String]$($gtGiB/$allFiles*100) + "%")
    }
    return $res
}

function getSize() {
    param(
        [Parameter(Mandatory=$true, Position=0)]
        [string]$data
    )
    $res = @{}
    if ($data / [Math]::Pow(1024, 4) -ge 1) {
        $res | Add-Member -NotePropertyName "sizeValue" -NotePropertyValue "TiB"
        $res | Add-Member -NotePropertyName "size" -NotePropertyValue $($data / [Math]::Pow(1024, 4))
    } elseif ($data / [Math]::Pow(1024, 3) -ge 1) {
        $res | Add-Member -NotePropertyName "sizeValue" -NotePropertyValue "GiB"
        $res | Add-Member -NotePropertyName "size" -NotePropertyValue $($data / [Math]::Pow(1024, 3))
    } elseif ($data / [Math]::Pow(1024, 2) -ge 1) {
        $res | Add-Member -NotePropertyName "sizeValue" -NotePropertyValue "MiB"
        $res | Add-Member -NotePropertyName "size" -NotePropertyValue $($data / [Math]::Pow(1024, 2))
    } elseif ($data / [Math]::Pow(1024, 1) -ge 1) {
        $res | Add-Member -NotePropertyName "sizeValue" -NotePropertyValue "KiB"
        $res | Add-Member -NotePropertyName "size" -NotePropertyValue $($data / [Math]::Pow(1024, 1))
    } else {
        $res | Add-Member -NotePropertyName "sizeValue" -NotePropertyValue "Byte"
        $res | Add-Member -NotePropertyName "size" -NotePropertyValue $data
    }
    return $res
}