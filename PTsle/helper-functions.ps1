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
        [switch]
        [Alias("length", "s")]
        $size,
        [ValidateSet("All", "BySize", "ByPercent")]
        $detail

    )

    # speichere SID des übergebenen Usernamens
    #$userSID = (get-localuser -name $name).SID
                 #greg tries
                 $userSID =dsmemberutil getsid -U $name
    # Home-Path ermittel über SID
    $userhomeDirectory = (Get-WmiObject Win32_Userprofile | Where-Object {$_.SID -eq $userSID}).LocalPath

    $numberFiles = Get-ChildItem -Path $userhomeDirectory -Recurse -Force -File -ErrorAction SilentlyContinue
    Write-Host ("Benutzer: {0} `n SID: {1} `nHomeverzeichnis: {2} `nAnzahl Dateien: {3}" -f $name, $userSID, $userhomeDirectory,$($numberFiles.Count))


    if($size){
        $size1 = (Get-ChildItem -Path $userhomeDirectory -recurse -ErrorAction SilentlyContinue | Measure-Object -property Length -Sum).Sum
        Write-Host ("Die Gesamtgröße der Dateien ist gleich {0:N2} GiB " -f $($size1/(1024 *1024 *1024)))
    }


    switch($numberFiles.Length){
        {$_ -le 1024} {$slength += $_; $scount++; break}
        {$_ -le (1024*1024)} {$mlength += $_; $mcount++; break}
        {$_ -le (1024*1024*1024)} {$llength += $_; $lcount++; break}
        default{$xllength += $_; $xlcount++}
    }

}



function usernameValidator(){
  return  $_ -in $(get-localuser).Name
}

function usernameCompleter(){
    $possibleValues = $(get-localuser).Name
    $possibleValues | ForEach-Object {$_}
}
