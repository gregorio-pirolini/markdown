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
     
            $institution=$data[$key][0];
         
           $titel=$data[$key][1];
           
            $vorname =$data[$key][2];
           
            $name =$data[$key][3];
           
           $strasse=$data[$key][4];
           
             $plz=$data[$key][5];
            
            $ort =$data[$key][6];
            
            $mw =$data[$key][7];
           if($mw == "m"){
            $mw =1;
                }else{
             $mw =0;};
           
            $bemerkung=$data[$key][8];
          
            $email=$data[$key][9];
          
$query = "INSERT INTO kunden SET "
            . "institution='".  $institution
            . "',"
            . "titel='".  $titel
            . "',"
            . "vorname='".  $vorname 
            . "',"
            . "name='".  $name 
            . "',"
            . "strasse='".  $strasse
            . "',"
            . "plz='".  $plz
            . "',"
            . "ort='".  $ort 
            . "',"
            . "mw='".  $mw 
            . "',"
            . "bemerkung='".  $bemerkung
            . "',"
            . "email='".  $email
            . "'";
 echo '$query=' .$query;
  mysqli_query($conn, $query)
            or die("error insert " . mysqli_error($conn));

}
  mysqli_close($conn); 
//$query = "INSERT INTO kunden SET "
//            . "institution='".  $institution
//            . "',"
//            . "titel='".  $titel
//            . "',"
//            . "vorname='".  $vorname 
//            . "',"
//            . "name='".  $name 
//            . "',"
//            . "strasse='".  $strasse
//            . "',"
//            . "plz='".  $plz
//            . "',"
//            . "ort='".  $ort 
//            . "',"
//            . "mw='".  $mw 
//            . "',"
//            . "bemerkung='".  $bemerkung
//            . "',"
//            . "email='".  $email
//            . "'";
//echo '$query=' .$query;

// mysqli_query($link, $query)
//            or die("error insert " . mysqli_error($link));
//  mysqli_close($link); 
//  




