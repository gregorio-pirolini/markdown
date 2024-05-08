<?php
include_once 'db_connect.php';
$bId = $_POST['bId'];
$query0 = "SELECT stat FROM bestellung WHERE bId='$bId'";
$result0 = $conn->query($query0); 
  
$row = mysqli_fetch_assoc($result0);
$x = $row['stat'];

if($x>0){
    $query="UPDATE bestellung SET stat=0 WHERE bId='$bId'";
    $result = $conn->query($query);      
if (!$result) {
    printf("Error: %s\n", mysqli_error($conn));
    exit();
}

else{
 echo "Die Rechnung wurde storniert";
}
}
else{
    $query="UPDATE bestellung SET stat=1 WHERE bId='$bId'";
    $result = $conn->query($query);      
if (!$result) {
    printf("Error: %s\n", mysqli_error($conn));
    exit();
}

else{
 echo "Die Rechnung wurde unstorniert";
}
}


     

 $result = $conn->query($query);      
if (!$result) {
    printf("Error: %s\n", mysqli_error($conn));
    exit();
}

else{
//echo  rechnung gelöscht;
}
    
 
 
 
$conn->close();