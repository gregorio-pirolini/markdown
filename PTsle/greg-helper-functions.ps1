###############################
# Datum: 27.2.23
# Titel: Aufgabe 4, Funktionen
################################


function check-userprofile(){
    param(
        [Alias("user", "n")]
        [Parameter(Mandatory= $true)]
        [ValidateScript({usernameValidator})]
        [ArgumentCompleter({usernameCompleter})]
        [string]$name,

        [Alias("length", "s")]
        [switch]$size,

        [ValidateSet("All", "BySize", "ByPercent")]
        [string] $detail

    )

    # speichere SID des übergebenen Usernamens
     
                 #greg tries
                  
    # Home-Path ermittel über SID
    $userhomeDirectory = "/Users/" +$name
write-host "userhomeDirectory "  $userhomeDirectory
# $numberFiles = Get-ChildItem -Path $userhomeDirectory -Recurse -Force -File -ErrorAction SilentlyContinue
# Write-Host ("Benutzer: {0} `n SID: {1} `nHomeverzeichnis: {2} `nAnzahl Dateien: {3}" -f $name, $userSID, $userhomeDirectory,$($numberFiles.Count))
# $numberFiles = Get-ChildItem -Path $userhomeDirectory -Recurse -Force -File -ErrorAction SilentlyContinue


    # if($size){
    #     $size1 = (Get-ChildItem -Path $userhomeDirectory -recurse -ErrorAction SilentlyContinue | Measure-Object -property Length -Sum).Sum
    #     Write-Host ("Die Gesamtgröße der Dateien ist gleich {0:N2} GiB " -f $($size1/(1024 *1024 *1024)))
    # }
    if($size){
       
        Write-Host "size was entereed"
     }else{
        Write-Host "nothing about size"
     }


    # switch($numberFiles.Length){
    #     {$_ -le 1024} {$slength += $_; $scount++; break}
    #     {$_ -le (1024*1024)} {$mlength += $_; $mcount++; break}
    #     {$_ -le (1024*1024*1024)} {$llength += $_; $lcount++; break}
    #     default{$xllength += $_; $xlcount++}
    # }

}
function usernameValidator(){
    "gregoio"
}

function usernameCompleter(){
    $possibleValues = "gregoriogregorio" 
    $possibleValues | ForEach-Object {$_}
}
check-userprofile 

