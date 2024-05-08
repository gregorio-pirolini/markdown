<?php
include_once 'db_connect.php';
$lrText = filter_input(INPUT_POST, 'lrText', FILTER_SANITIZE_STRING);
$lrName = filter_input(INPUT_POST, 'lrName', FILTER_SANITIZE_STRING);
$action = filter_input(INPUT_POST, 'action', FILTER_SANITIZE_STRING);
$lr = filter_input(INPUT_POST, 'lr', FILTER_SANITIZE_STRING);
$lr_Name = $lr." - ".$lrName;
//check if exist
//If doesnt exist write
//if exist send uebeschreiben
//resend with action=overwrite

//check if name in db
$query0 = "select lrName from lr where lrName='$lr_Name' and stat='1' ";
$result0 = $conn->query($query0);

if (!$result0) {
printf("Error: %s\n", mysqli_error($conn));
    exit();
}

else if((mysqli_num_rows($result0)<1)){

    $x=1;
}else{



if ($action=="write"){
  $query = "select lrText from lr where lrName='$lr_Name' and stat='1'";
   $result = $conn->query($query);
if (!$result) {
printf("Error: %s\n", mysqli_error($conn));
    exit();
}

else{
    while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
    
       $found = $row['lrText'];
    }

if( $found==='kein Text wurde eingetragen'){
    //$x="null";-->write
  $query1 = "UPDATE lr SET lrText='$lrText' WHERE lrName='$lr_Name' and stat='1'" or die("select error" . mysqli_error($link));
//echo $query;
$result1 = $conn->query($query1);
if (!$result1) {
printf("Error: %s\n", mysqli_error($conn));
    exit();
}
else{ 
 $x =  $lr_Name." Text wurde gespeichert";
}

}else{
    $x=0;
  
    }
 

}

}else if ($action=="update"){
   $query1 = "UPDATE lr SET lrText='$lrText' WHERE lrName='$lr_Name' and stat='1'" or die("select error" . mysqli_error($link));
//echo $query;
$result1 = $conn->query($query1);
if (!$result1) {
printf("Error: %s\n", mysqli_error($conn));
    exit();
}
else{ 
 $x =  $lr_Name." Text wurde aktualisiert";
}  
    
    
}

 }


echo json_encode($x);
