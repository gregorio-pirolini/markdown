
<#
write-host "hello"
#>
cls
function sortOut($art, $Homeverzeichnis) {
    if ($art -eq 'All') {
        Write-Host '------------------------------------------------'
        
        Write-Host 'All:'

        $Homeverzeichnis | Measure-Object -Property Length -Sum
    }
    elseif ($art -eq 'BySize') {
        Write-Host 'BySize'
    }
    elseif ($art -eq 'ByPercent') {
        Write-Host 'ByPercent'

    }
}
function Format-Bytes {
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        [ValidateNotNullOrEmpty()]
        [long]$Bytes
    )

    $sizes = "B", "KB", "MB", "GB", "TB", "PB"
    $sizeIndex = 0

    while ($Bytes -ge 1000 -and $sizeIndex -lt ($sizes.Length - 1)) {
        $Bytes = $Bytes / 1000
        $sizeIndex++
    }

    "{0:N2} {1}" -f $Bytes, $sizes[$sizeIndex]
}
function writeForMe {
    param(
        [Parameter(Mandatory)]
        [string] $x,

        [Parameter(Mandatory)]
        [Alias("user", "n" )]
        [string] $name,

        [Parameter(Mandatory = $false)]
        [Alias("length", "s")]
        [switch]$Bar,

        [Parameter(Mandatory = $false)]
        [ValidateSet('All', 'BySize', 'ByPercent')]
        [string]$detail = "All"


    )
    
    $pathMac = "/Users/" + $name
    $path = "C:\Users\" + $name
    write-host '$home:' $x  
    write-host '$path:' $path  

 
  
    # Get-ChildItem $path -File | Measure-Object -Property Length -Sum
    if ($Bar) {
        Write-Output "Bar is on";
        $Homeverzeichnis = (Get-WmiObject win32_userprofile | where-object { $_LocalPath -like "*$name" }.localPath)
 (Get-ChildItem $Homeverzeichnis -File | Measure-Object -Property Length -Sum).Sum | Format-Bytes
        
        Write-Output '$detail: ' $detail;
        sortOut( $Homeverzeichnis, $arr)

    }


    else {
        Write-Output "Bar is off"
    }
}

writeForMe $HOME -name "s01" -Bar "All"; 