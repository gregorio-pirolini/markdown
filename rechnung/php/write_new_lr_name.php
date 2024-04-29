<?php
include_once 'db_connect.php';
$suche = filter_input(INPUT_GET, 'suche', FILTER_SANITIZE_STRING);

$query = "SELECT lrName FROM lr where lrName='$suche' and stat='1'  " or die("select error" . mysqli_error($link));


$result = $conn->query($query);

if (!$result) {
printf("Error: %s\n", mysqli_error($conn));
    exit();
}
else{
if(mysqli_num_rows($result)>0){ 
    $x = $suche. " existiert bereit" ;
}else{ 
 $query1 = "INSERT INTO lr (lrName, lrText) VALUES ('$suche' , 'kein Text wurde eingetragen')" or die("select error" . mysqli_error($link));
//echo $query;


$result1 = $conn->query($query1);

if (!$result1) {
printf("Error: %s\n", mysqli_error($conn));
    exit();
}
else{
    $query2 = "select lrId FROM lr WHERE  lrName ='$suche' " or die("select error" . mysqli_error($link));
//echo $query;


$result2 = $conn->query($query2); 
  while ($row = mysqli_fetch_array($result2, MYSQLI_ASSOC)) {
 $found[] = array(
      'anwort' => "<b>". $suche. "</b> wurde herstellt.",
       'lrId' => $row['lrId']
    );
 }

}   
    
}
}

//print_r($ergebnisse);
echo json_encode($found);
