<?php
include_once 'db_connect.php';
$suche = filter_input(INPUT_GET, 'kunden', FILTER_SANITIZE_STRING);


$query = "SELECT * FROM kunden WHERE kId='$suche' and stat='1' ";
//echo $query;
$result = mysqli_query($conn, $query);

while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
    $found1[] = array(
       'kId' => $row['kId'],
        'institution' => $row['institution'],
         'titel' => $row['titel'],
       'vorname' => $row['vorname'],
       'name' => $row['name'],
        'strasse' => $row['strasse'],
        'plz' => $row['plz'],
        'ort' => $row['ort'],
        'mw' => $row['mw'],
        'mob' => $row['mob'],
        'tel' => $row['tel'],
        'email' => $row['email'],
        'bemerkung' => $row['bemerkung']
            );
    
}
 mysqli_query($conn, $query)
or die("error insert " . mysqli_error($conn));

$query1 = "SELECT preisListeName, rl, buecher FROM bestellung WHERE kId2='$suche' and stat='1' order by datum desc LIMIT 1 ";
$result1 = mysqli_query($conn, $query1);
$row = mysqli_fetch_assoc($result1);
$x = $row['preisListeName'];
$xx = $row['rl'];
$xxx = $row['buecher'];
$query2 = "SELECT preisName FROM preis WHERE preisId='$x' and stat='1' ";
$result2 = mysqli_query($conn, $query2);
$row2 = mysqli_fetch_assoc($result2);
$x2 = $row2['preisName'];






$found1[0]['preisId']=$x;
$found1[0]['rl']=$xx;
$found1[0]['buecher']=$xxx;
$found1[0]['preisListeName']=$x2;
echo json_encode($found1);
 

mysqli_close($conn); 


