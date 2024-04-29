<?php
include_once 'db_connect.php';
$price = filter_input(INPUT_GET, 'price', FILTER_SANITIZE_STRING);
$i = json_decode(filter_input(INPUT_GET, 'i', FILTER_SANITIZE_STRING),true);




for($j = 0; $j < count($i); ++$j) {
    
   if($i[$j]<34){   
$query = "select i.iName, i.iId, p.item".$i[$j].
" from items as i".
" join preis as p".
" where p.preisName='$price' and i.iId='$i[$j]'"  or die("select error" . mysqli_error($link));
 }else{
 $query = "select i.iName, i.iId, p.item_".$i[$j].
" from items as i".
" join preis as p".
" where p.preisName='$price' and i.iId='$i[$j]'"  or die("select error" . mysqli_error($link));      
 }

$result = $conn->query($query);      
if (!$result) {
    printf("Error: %s\n", mysqli_error($conn));
    exit();
}

while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
   
    if($i[$j]<34){
    $found[]=array(
      'name' => $row["iName"],
       'preis' =>  $row['item'.$i[$j]], 
        'iId' =>  $row["iId"] 
        );
    }else{
        $found[]=array(
      'name' => $row["iName"],
       'preis' =>  $row['item_'.$i[$j]], 
        'iId' =>  $row["iId"] 
        );
    }
    
      
    
}
}
echo json_encode($found);
$conn->close();
