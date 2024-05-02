<?php
include_once 'db_connect.php';
 
$bId= filter_input(INPUT_POST, 'bId', FILTER_SANITIZE_STRING);
$preisName= filter_input(INPUT_POST, 'preisName', FILTER_SANITIZE_STRING);
$rl= filter_input(INPUT_POST, 'lr', FILTER_SANITIZE_STRING);
$buecher= filter_input(INPUT_POST, 'buecher', FILTER_SANITIZE_STRING);
$porto= filter_input(INPUT_POST, 'porto', FILTER_SANITIZE_STRING);

if (filter_input(INPUT_POST, 'portoGewuenscht', FILTER_SANITIZE_STRING) !=="" ){
    $portoGewuenscht= filter_input(INPUT_POST, 'portoGewuenscht', FILTER_SANITIZE_STRING);
}else{
  $portoGewuenscht= 'null';  
}
$preis= filter_input(INPUT_POST, 'preis', FILTER_SANITIZE_STRING);
$data = json_decode($_POST['data'],true);

 
 
//echo $bId.'/n'.$preisName.'/n'.$rl.'/n'.$buecher.'/n'.$porto.'/n'.$preis.'/n';
 $myString="";
foreach ($data as $key => $val) {
    $KEY='item_'.($key+1);
//     echo "$KEY => $val\n";
   $myString.=  $KEY."=".$val.", ";
//    $myArray[0][$KEY]=$val;
}
//$item1 = $data[0];
// print_r($myArray);


$sql="update bestellung SET $myString preislisteName=$preisName, preis=$preis, rl=$rl, buecher=$buecher, porto=$porto, portoGewuenscht=$portoGewuenscht where bId='$bId'";
//echo $sql;
if ($conn->query($sql) === TRUE) {
    echo "Rechnung wurde gespeichert.";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
