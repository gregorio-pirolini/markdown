<?php
include_once 'db_connect.php';
$data = json_decode($_POST['data'],true);

//print_r($data);
 


//foreach ($data as $key => $value) {
//    echo "KEY: $key\n";
//    foreach ($value as $k => $v) {
//        echo "$k | $v\n";
//    }
//}
foreach ($data as $key => $value) {
            $rechnungsNummer=$data[$key][11];
             $porto=$data[$key][14];
$query = "UPDATE bestellung SET porto=$porto WHERE rechnungsNummer='$rechnungsNummer'";
 echo '$query=' .$query;
  mysqli_query($conn, $query)
            or die("error insert " . mysqli_error($conn));

}
  mysqli_close($conn); 


