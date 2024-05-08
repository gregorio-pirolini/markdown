<?php
include_once 'db_connect.php';

 $lrId = filter_input(INPUT_POST, 'lrId', FILTER_SANITIZE_STRING);
 
 
$query="select rechnungsNummer from bestellung Where rl= $lrId and stat='1'";  
 $result = $conn->query($query);      
if (!$result) {
    printf("Error: %s\n", mysqli_error($conn));
    exit();
}

else{
 
if(mysqli_num_rows($result)>0){ 
    
    //used cannot be deleted
    $x = 'kann nichrt gelöscht werden';
    while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
    
    $found[] = array(
      'rechnungsNummer' => $row['rechnungsNummer'],
     );};
     
   $found[]['antwort']=0; //no
   echo json_encode($found); 
}else{//change 1 to 0
    $query1="UPDATE lr SET stat=0 WHERE lrId='$lrId'";
     

 $result1 = $conn->query($query1);      
if (!$result1) {
    printf("Error: %s\n", mysqli_error($conn));
    exit();
}

else{
//echo  lr gelöscht;
    $x = 'wurde gelöscht';
    
     $found[] = array(
      'antwort' => 1, //yes
      'text' => $x  
         
     );};
echo json_encode($found); 
}
  

   
    
    
    
    
}
    
 
 
 
$conn->close();