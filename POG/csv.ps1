# Path to the CSV file
$csvFilePath = "C:\Users\Administrator\Desktop\markdown\POG\wetterdaten_konstanz.csv"

# Import the CSV file
$data = Import-Csv -Path $csvFilePath -Delimiter  ";"

# Access the data

 for ($i = 0; $i -lt 10; $i++) {
    $row = $data[$i]

       $column1 = $row.MESS_DATUM
       $column2 = $row.QN_4
     Write-Host  '$column1:'  $column1 ' $column2:'  $column2
    
 }

# $data | Format-Table

# #  foreach ($row in $data) {
# #      # Access individual columns using property names
# #      $column1 = $row.MESS_DATUM
# #      $column2 = $row.QN_4

# #      # Process the data as needed
# #      Write-Host "Column 1: $column1, Column 2: $column2"
# #  }