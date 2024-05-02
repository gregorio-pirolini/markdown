<?php
include_once 'db_connect.php';
 

$query = "SELECT * FROM items" or die("select error" . mysqli_error($link));

       
 $found = [];

$result = $conn->query($query);      
if (!$result) {
    printf("Error: %s\n", mysqli_error($conn));
    exit();
}

while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
    $found[] = array(
       'iId' => $row['iId'] ,
        'iName' =>  $row['iName'] 
    );
}

echo json_encode($found);
$conn->close();
