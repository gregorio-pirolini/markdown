<?php
include_once 'db_connect.php';

$suche = filter_input(INPUT_GET, 'suche', FILTER_SANITIZE_STRING);
$term = filter_input(INPUT_GET, 'term', FILTER_SANITIZE_STRING);
if( isset($_GET['lr_choice']) ){  
$lr_choice = filter_input(INPUT_GET, 'lr_choice', FILTER_SANITIZE_STRING);
if($lr_choice==='l'){$lr_choiceLong='Lieferschein';}
else if($lr_choice==='r'){$lr_choiceLong='Rechnung';}
}

if($suche=='kundenFill_titel'){$suche="titel";}

 

if($suche=="rechnungsNummer"){
   $query = "SELECT $suche FROM bestellung WHERE $suche LIKE '$term%' and stat='1'  " or die("select error" . mysqli_error($conn)); 

}
else if($suche=="loadFromBestellungNummer"){
    $suche="bId";
   $query = "SELECT $suche FROM bestellung WHERE $suche LIKE '$term%' and stat='1'  " or die("select error" . mysqli_error($conn)); 
// echo $query;
}
else if($suche==="lrName")
    {
$query = "SELECT $suche FROM lr WHERE $suche LIKE '$lr_choiceLong%' and stat='1'" or die("select error" . mysqli_error($conn));
//   echo  $query;
   
   
   
}else if( $suche==="name"){
$query = "SELECT Distinct $suche FROM kunden WHERE $suche LIKE '$term%' and stat='1'  " or die("select error" . mysqli_error($conn));



}
else if( $suche==="email"){
$query = "SELECT $suche FROM kunden WHERE $suche LIKE '$term%' and stat='1'  " or die("select error" . mysqli_error($conn));



}

else if($suche==="preisName")
    {
$query = "SELECT * FROM preis where stat='1'" or die("select error" . mysqli_error($conn));
}

else if($suche==="titel")
    {
$query = "SELECT distinct titel FROM kunden where titel LIKE '$term%' " or die("select error" . mysqli_error($conn));
}

$found = [];

$result = $conn->query($query);

if (!$result) {
    printf("Error: %s\n", mysqli_error($conn));
    exit();
}

while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
    $found[] = array(
       'label' => $row[$suche],
        'value' => $row[$suche]
    );
}

echo json_encode($found);
