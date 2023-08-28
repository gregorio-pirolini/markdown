Get-EventLog -LogName security 
| ? {$_.EventID -eq 4624 
    -and $_.Timewritten 
    -gt (get-Date).AddDays(-1) 
    -and $_.Message 
    -match "s01"}