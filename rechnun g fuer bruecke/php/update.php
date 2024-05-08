<?php
include_once 'db_connect.php';


//print_r($data);
 


//foreach ($data as $key => $value) {
//    echo "KEY: $key\n";
//    foreach ($value as $k => $v) {
//        echo "$k | $v\n";
//    }
//}
for ($i = 11; $i <= 34; $i++) {
   

$query = " UPDATE bestellung SET item_$i = 0 WHERE item_$i Is Null";
 echo '$query=' .$query;
 mysqli_query($conn, $query)
or die("error insert " . mysqli_error($conn));

}
  mysqli_close($conn); 


