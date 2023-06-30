function check-regex(){
    param(
        [Parameter(Mandatory=$true, Position = 0)]
        $string,
        [Parameter(Mandatory=$true, Position = 1)]
        [ValidateSet("IPv4", "MAC", "Port")]
        $format
    )

    switch($format){
    "IPv4"{}
    "MAC"{return $string -match "^((([0-9A-F]{2})[-:]){5})[0-9A-F]{2}$"}
    "Port"{ return [int32]$string -in (255..65535)}
    
    
    }
}

check-regex "18-66-XY-02-D0-7F" "MAC"