Set-Location $PSScriptRoot
. .\sql_query.ps1

cls 

 
$datas = Get-EventLog -LogName system |
 ? {$_.EventID -in (7001, 7002) -and $_.Timewritten -gt (get-Date).AddDays(-1) }
 
 $datas


foreach ($data in $datas) {
   # Code to be executed for each $item
   $time =  $data.TimeWritten.ToString("yyyy-MM-dd HH:mm:ss")
   $3vent =  $data.EventID
   $sid = $data.ReplacementStrings[1]
   $name = (Get-LocalUser -SID $sid).Name
  # Check if the user is in the 'users' table
    $userQuery = "SELECT id FROM users WHERE username = '$name'"
    $userResult = (query-db -sql $userQuery).Tables

    if ($userResult -and $userResult.Count -gt 0) {
        write-host "User with SID FOUND!!."
        $userId = $userResult[0].Rows[0].id
    } else {
        write-host "User with $name not found."
        $userInsertQuery = "INSERT INTO users Values (null,'$name', '$sid' );"
        (nonquery-db -sql $userInsertQuery)
 
        $lastInsertedUserId = (query-db -sql "SELECT LAST_INSERT_ID() AS LastInsertedID;").Tables[0].Rows[0].LastInsertedID
        $userId = $lastInsertedUserId
    }

    # Check if the 3vent is in the '3vents' table
    $eventQuery = "SELECT id FROM events WHERE name = '$3vent'"
    $eventResult = (query-db -sql $eventQuery).Tables

    if ($eventResult -and $eventResult.Count -gt 0) {
        $eventId = $eventResult[0].Rows[0].id
    } else {
        write-host "Event with ID $3vent not found."
        $eventInsertQuery = "INSERT INTO events Values (null,'$3vent');"
        (nonquery-db -sql $eventInsertQuery)
        $lastInsertedEventId = (query-db -sql "SELECT LAST_INSERT_ID() AS LastInsertedID;").Tables[0].Rows[0].LastInsertedID
        $eventId = $lastInsertedEventId
    }

    $toDeleteQuery = "INSERT INTO toDelete Values (null, '$time', '$userId', '$eventId');"
    (nonquery-db -sql $toDeleteQuery)

    Write-Host "Time: $time"
    Write-Host "Event ID: $3event"
    Write-Host "SID: $sid"
    Write-Host "User: $name"
    Write-Host "User ID: $userId"
    Write-Host "Event ID: $eventId"
    Write-Host

}
 
 #$sql = "Insert Into toDelete Values (null, '0000-00-00 00:00:00', 'inject me poison', 'S-1-5-21-234426513-3663089194-1704559054-1001', 'something');"
#(nonquery-db -sql $sql)


#$sql = "CREATE TABLE toDelete (
#    id INT PRIMARY KEY AUTO_INCREMENT,
 #   time DATETIME,
  #  user VARCHAR(100),
   #  SID VARCHAR(100),
    # vorgang VARCHAR(500)
 #);"

 #(nonquery-db -sql $sql)