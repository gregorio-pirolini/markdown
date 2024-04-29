<?php
include_once 'db_connect.php';
$data = json_decode($_POST['data'],true);

foreach ($data as $key => $value) {
            $vorname =$data[$key][2];
           
            $name =$data[$key][3];
           
           $strasse=$data[$key][4];
           
           $datum1=$data[$key][10];
           $datum2 = str_replace('.', '-', $datum1);
           $datum = date('Y-m-d', strtotime($datum2));
           
           $rechnungsNummer=$data[$key][11];
           
           $rl=$data[$key][12];
           if($rl=='R') {$rl=1;}else{$rl=2;}
           
           $preislisteName=$data[$key][13];
           if($preislisteName=='15') {$preislisteName='normale';}
           elseif($preislisteName=='13') {$preislisteName='verein';}
           elseif($preislisteName=='11.5') {$preislisteName='ip';}
           elseif($preislisteName=='0') {$preislisteName='frei';}
$query = "SELECT kId FROM kunden WHERE vorname='$vorname' AND name ='$name' AND strasse='$strasse'";
$result = mysqli_query($conn, $query);  
$datensatz = mysqli_fetch_assoc($result);
mysqli_free_result($result);
$kId =  $datensatz['kId'];


$query1 = "INSERT INTO bestellung SET "
            . "datum='". $datum
            . "',"
            . "rechnungsNummer='".  $rechnungsNummer
            . "',"
            . "rl='". $rl 
            . "',"
            ."kId2='". $kId
            . "',"
            ."preislisteName='". $preislisteName
            . "'";
 mysqli_query($conn, $query1)
            or die("error insert " . mysqli_error($conn));

}
  mysqli_close($conn); 





// echo $kId;

 
$query = "INSERT INTO bestellung SET "
            . "datum='". $datum
            . "',"
            . "rechnungsNummer='".  $rechnungsNummer
            . "',"
            . "rl='". $rl 
            . "',"
            ."kId2='". $kId
            . "',"
            ."preislisteName='". $preislisteName
            . "'";
// echo '$query=' .$query;