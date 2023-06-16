$patternNumber = "\d"
$patternMAC = "^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$"
$patternIPv4 = "\b(?:\d{1,3}\.){3}\d{1,3}\b"
$patternPort = "^[0-65535]$"

function check-regex() {
    param(
        $string,
        $format
    )

    switch ($format) {
        'number' {
            $pattern = $patternNumber
            break
        }
        'IPv4' {
            $pattern = $patternIPv4
            break
        }
        'MAC' {
            $pattern = $patternMAC
            break
        }
        'Port' {
            $pattern = $patternPort
            break
        }
        default {
            Write-Host "ERROR IN FORMAT"
            return
        }
    }

    $answer = $true
    $is = " is correct" 

    $matching = [regex]::Matches($string, $pattern)
    if ($matching.Count -eq 0) {
        $is = " is NOT correct" 
        $answer = $false
    }

    Write-Host "$format : $string $is"
    return $answer
}

check-regex 3 'n umber'
check-regex '10.0.0.0' 'IPv4'
check-regex '255. .255.255' 'IPv4'
check-regex 'MAC' 'MAC'
check-regex '65537' 'Port'