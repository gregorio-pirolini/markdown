<?php
include_once 'db_connect.php';
$suche = filter_input(INPUT_GET, 'suche', FILTER_SANITIZE_STRING);
if (!is_numeric($suche)) {

$query = "SELECT lrText, lrId, lrName from lr where lrName = '$suche' and stat='1'" or die("select error" . mysqli_error($link));

}else{
  $query = "SELECT lrText, lrName, lrId from lr where lrId = '$suche' and stat='1'" or die("select error" . mysqli_error($link));  
}
 

$result = $conn->query($query);      
if (!$result) {
    printf("Error: %s\n", mysqli_error($conn));
    exit();
}

while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
     $found[] = array(
      'lrText' => $row['lrText'],
       'lrId' => $row['lrId'],
         'lrName' => $row['lrName'] 
    );
}

echo json_encode($found);
$conn->close();
