<?php
include_once 'db_connect.php';
$suche = filter_input(INPUT_GET, 'suche', FILTER_SANITIZE_STRING);

if (is_numeric($suche)) {
       $query = "SELECT * FROM preis where preisId='$suche' and stat='1'  " or die("select error" . mysqli_error($link));
    } else {
       $query = "SELECT * FROM preis where preisName='$suche' and stat='1'  " or die("select error" . mysqli_error($link));
    }
 


//echo $query;
$ergebnisse = [];

$result = $conn->query($query);

if (!$result) {
    printf("Error: %s\n", mysqli_error($link));
    exit();
}


   while ($row = mysqli_fetch_array($result,MYSQL_ASSOC)) {
   // print_r($row);
  // echo $row.' <br>' ;
       array_push($ergebnisse, $row);
} 

//print_r($ergebnisse);
echo json_encode($ergebnisse);
