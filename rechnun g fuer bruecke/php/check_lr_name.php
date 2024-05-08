<?php
include_once 'db_connect.php';
$suche = filter_input(INPUT_GET, 'suche', FILTER_SANITIZE_STRING);

$query = "SELECT lrName FROM lr where lrName='$suche' and stat='1'  " or die("select error" . mysqli_error($link));
//echo $query;


$result = $conn->query($query);

if (!$result) {
printf("Error: %s\n", mysqli_error($conn));
    exit();
}
else{
if(mysqli_num_rows($result)>0){ 
    $x = 1;
}else{ $x =0;
}
}
//print_r($ergebnisse);
echo json_encode($x);
