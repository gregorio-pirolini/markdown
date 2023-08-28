Set-Location $PSScriptRoot
. .\sql_query.ps1

cls 

$datas = Get-EventLog -LogName system |
 ? {$_.EventID -in (7001, 7002) -and $_.Timewritten -gt (get-Date).AddDays(-8)  }
 
 
 
foreach ($data in $datas) {
$userId='??'
$eventId='??'

 # Code to be executed for each $item
$time =  $data.TimeWritten.ToString("yyyy-MM-dd HH:mm:ss")
$3vent =  $data.EventID
$sid = $data.ReplacementStrings[1]
$name = (Get-LocalUser -SID $sid).Name
# Check if the user is in the 'users' table
$userQuery = "SELECT id FROM users WHERE username = '$name'"
$userResult = (query-db -sql $userQuery).Tables

    if ($userResult -and $userResult.id.length  -gt 0) {
        write-host "User with SID FOUND!!."
        $userId = $userResult[0].Rows[0].id
    } else { 
        write-host "User with $name not found."
        $userInsertQuery = "INSERT INTO users Values (null,'$name', '$sid' );"
        write-host $userInsertQuery
        $testAdd = (nonquery-db -sql $userInsertQuery)
        if ($testAdd) {write-host "User with $name ADDED."
# Check if the user is in the 'users' table
            $last="SELECT LAST_INSERT_ID() AS id From users;"
            $lastInsertedUserId = (query-db -sql $last ).Tables
            $userId = $lastInsertedUserId[0].Rows[0].id
            write-host "added at $userId"
        }else{write-host "PROBLEM with $name ADDED."}
   }
    write-host '#####################       event #######################'
# Check if the event is in the 'event' table
$eventQuery = "SELECT id FROM events WHERE name = '$3vent'"
write-host "SELECT id FROM events WHERE name = '$3vent'"
$eventResult = (query-db -sql $eventQuery).Tables
    if ($eventResult -and $eventResult.id.length -gt 0) {
       write-host "event with SID FOUND!!."
       $eventId = $eventResult[0].Rows[0].id
    } else {
        write-host "Event with ID $3vent not found."
        $eventInsertQuery = "INSERT INTO events Values (null,'$3vent');"
        $testAdd = (nonquery-db -sql $eventInsertQuery)
            if ($testAdd) {write-host "event with $3vent ADDED."
                $lastInsertedEventId = (query-db -sql "SELECT LAST_INSERT_ID() AS LastInsertedID From events;").Tables[0].Rows[0].LastInsertedID
                $eventId = $lastInsertedEventId
                write-host "added at $lastInsertedEventId"
            }else{write-host "PROBLEM with $3vent ADDED."
            }
    }
    write-host '----------------------------'
    write-host '----------------------------'
   write-host '----------------------------'
  write-host '----------------------------'
    Write-Host "Time: $time"
    Write-Host "Event ID:  $eventId"
    Write-Host "SID: $sid"
    Write-Host "User: $name"
    Write-Host "User ID: $userId"
   
    
     $toDeleteQuery = "INSERT INTO eventsusers Values (null, '$time', '$userId', '$eventId');"
      (nonquery-db -sql $toDeleteQuery)
   
  
}
 