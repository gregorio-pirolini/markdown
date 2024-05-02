<?php
include_once 'db_connect.php';
$kId2 = $_POST['dataKundenNummer'];
 
$preislisteName = $_POST['dataPreis'];
//insert new rechnung
//check what is the last number 
//add date
//add 3 numbers+   +/year+month
//add kid2
$date = date('Y-m-d', strtotime("now")) ;
 
$query = "select MAX(rechnungsNummer) AS maxrechnungsNummer from bestellung";
$result = mysqli_query($conn, $query);
$row = mysqli_fetch_assoc($result);
$x = $row['maxrechnungsNummer'];
$pos=  strrpos ( $x  , '/' );
//string substr ( string $string , int $start [, int $length ] )
$toAdd=substr ( $x  , 0  ,  $pos  );
$Added=$toAdd+1;
 
$rechnungsNummer = $Added.'/'.date('m', strtotime("now")).date('y', strtotime("now"));

$query1= "INSERT INTO bestellung (kid2, datum, rechnungsNummer,   preislisteName ) VALUES ('$kId2', '$date', '$rechnungsNummer','$preislisteName' )";
 
if ($conn->query($query1) === TRUE) {
 
    $query2= "select bId FROM bestellung where rechnungsNummer = '$rechnungsNummer'";
   $result2=$conn->query($query2);
  
   $row = mysqli_fetch_assoc($result2);
   $x = $row['bId'];
   $found[]=array(
      'datum' => $date,
      'rechnungsNummer' =>  $rechnungsNummer,
      'bId' =>  $x
        );
   
    echo json_encode($found);
    
    
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}


mysqli_close($conn); 


