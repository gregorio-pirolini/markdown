<?php
include_once 'db_connect.php';

//return value for item 34
//$query = "select  item34,preisId, preisName from preis ";
////  echo '$query=' .$query;
//$result = mysqli_query($conn, $query); 
//
// if (!$result) {
//printf("Error: %s\n", mysqli_error($conn));
//    exit();
//} else{while($row = $result->fetch_assoc()) {
//       echo "preisId: " . $row["preisId"]. " - preisName: " . $row["preisName"]. "- item34: " . $row["item34"].  "<br>";
//       
//    }
//
//}
       
//$query0 = "ALTER TABLE preis CHANGE COLUMN item_34 item34 FLOAT";
// 
//$result0 = mysqli_query($conn, $query);  
//
//if (!$result0) {
//printf("Error: %s\n", mysqli_error($conn));
//    exit();
//}


 $query = "select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME='preis'";
 
 $result = mysqli_query($conn, $query); 

 if (!$result) {
printf("Error: %s\n", mysqli_error($conn));
    exit();
} else{while($row = $result->fetch_assoc()) {
       echo "COLUMN_NAME: " . $row["COLUMN_NAME"]."<br>";
       
    }

}
$conn->close();
           
             
       
      
    




  