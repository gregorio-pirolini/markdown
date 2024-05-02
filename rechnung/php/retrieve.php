<?php
include_once 'db_connect.php';
$dataPreis = $_POST['dataPreis'];
 
 
 
$query="select p.preisName, p.preisId".
     " from preis as p".
  
     " where p.preisName = 'Normale' ";
     

 $result = $conn->query($query);      
if (!$result) {
    printf("Error: %s\n", mysqli_error($conn));
    exit();
}

else{
   $row = mysqli_fetch_assoc($result);
   $found = $row['preisId'];
}
    
 
 
echo $found ;
$conn->close();