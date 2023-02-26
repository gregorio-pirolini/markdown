
<#
write-host "hello"
#>
function Format-Bytes {
    param (
        [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
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
        [ValidateSet('G','gregorio','Falk')]
        [Alias("Server")]
        [string] $name,

        [Parameter(Mandatory=$false)]
        [Alias("length","s")]
        [switch]$Bar,

        [Parameter(Mandatory=$false)]
        [ValidateSet('All','BySize','ByPercent')]
        [string]$detail


    )
$path = "/Users/"+$name
    write-host '$home:' $x  
    write-host '$path:' $path  

 
  
    Get-ChildItem $path -File | Measure-Object -Property Length -Sum
  if ($Bar) {
    Write-Output "Bar is on";
 (Get-ChildItem $path -File | Measure-Object -Property Length -Sum).Sum| Format-Bytes

 switch($detail){
   "All" { $result = 'All'    }
    "BySize" { $result = 'BySize'    }
    "ByPercent" { $result = 'ByPercent'   }
 }
 Write-Output '$result: ' $result;

}


else {
    Write-Output "Bar is off"
}
}

writeForMe $HOME -server "gregorio" -Bar "BySize"; 