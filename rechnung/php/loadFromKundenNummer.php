<?php
include_once 'db_connect.php';
$suche = filter_input(INPUT_GET, 'suche', FILTER_SANITIZE_STRING);
$find = filter_input(INPUT_GET, 'find', FILTER_SANITIZE_STRING);
$vorname = filter_input(INPUT_GET, 'vorname', FILTER_SANITIZE_STRING);
$name = filter_input(INPUT_GET, 'name', FILTER_SANITIZE_STRING);
$strasse = filter_input(INPUT_GET, 'strasse', FILTER_SANITIZE_STRING);

if($find=='kunden'){
$query = "SELECT * FROM kunden WHERE kId='$suche' and stat='1' ";
$result = mysqli_query($conn, $query);
if(mysqli_num_rows($result)==0){  
$x = "nicht gefunden";
echo json_encode($x);  
    
}else {
    
  while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
    $found[] = array(
       'kId' => $row['kId'],
       'vorname' => $row['vorname'],
       'name' => $row['name'],
        'strasse' => $row['strasse'],
        'email' => $row['email']
    );
}




echo json_encode($found);   
    
    
}


}
else if ($find=='rechnungen'){
$query = "SELECT * FROM bestellung WHERE kId2='$suche' ORDER BY datum DESC";
//echo '$query=' .$query;
$found = [];
$result = mysqli_query($conn, $query);
if (!$result) {
    printf("Error: %s\n", mysqli_error($link));
    exit();
}

while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
    $found[] = array(
       'bId' => $row["bId"],
       'datum' => $row["datum"],
       'rechnungsNummer' => $row["rechnungsNummer"],
        'stat' => $row["stat"],
    );
}

echo json_encode($found);





}
else if($find=='email'){
 $query = "SELECT * FROM kunden WHERE email='$suche' and stat='1' ";
$result = mysqli_query($conn, $query);
if(mysqli_num_rows($result)==0){  
$x = "nicht gefunden";
echo json_encode($x);  
    
}else {
    
  while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
    $found[] = array(
       'kId' => $row['kId'],
       'vorname' => $row['vorname'],
       'name' => $row['name'],
        'strasse' => $row['strasse'],
        'email' => $row['email']
    );
}
echo json_encode($found);   
    
    
}   
    
}
else if($find=='bestellungNummer'){
$query = "SELECT kId2 FROM bestellung WHERE bId='$suche' and stat='1' ";
$result = mysqli_query($conn, $query);
if(mysqli_num_rows($result)==0){  
$x = "nicht gefunden";
echo json_encode($x);  
    
}else {
   
$row = mysqli_fetch_assoc($result);
$x = $row['kId2'];
$query = "SELECT * FROM kunden WHERE kId='$x' and stat='1' ";
$result = mysqli_query($conn, $query); 
while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
    $found[] = array(
       'kId' => $row['kId'],
       'vorname' => $row['vorname'],
       'name' => $row['name'],
        'strasse' => $row['strasse'],
        'email' => $row['email']
    );
}
echo json_encode($found);    
    
}   
    
}
else if($find=='alteNummer'){
$query = "SELECT kId2 FROM bestellung WHERE rechnungsNummer='$suche' and stat='1' ";
$result = mysqli_query($conn, $query);
if(mysqli_num_rows($result)==0){  
$x = "nicht gefunden";
echo json_encode($x);  
    
}else {
   
$row = mysqli_fetch_assoc($result);
$x = $row['kId2'];
$query = "SELECT * FROM kunden WHERE kId='$x' and stat='1'";
$result = mysqli_query($conn, $query); 
while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
    $found[] = array(
       'kId' => $row['kId'],
       'vorname' => $row['vorname'],
       'name' => $row['name'],
        'strasse' => $row['strasse'],
        'email' => $row['email']
    );
}
echo json_encode($found);    
    
}   
    
}

else if ($find=='strasse'){
$query = "SELECT * FROM kunden WHERE name='$name' and stat='1' ORDER BY kId DESC";
// echo '$query=' .$query;
$result = mysqli_query($conn, $query);
if(mysqli_num_rows($result)==0){  
$x = "nicht gefunden";
echo json_encode($x); 
} else{

 while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
    $found[] = array(
       'kId' => $row['kId'],
       'vorname' => $row['vorname'],
       'name' => $row['name'],
        'strasse' => $row['strasse'],
        'email' => $row['email']
    );
}
 echo json_encode($found);


//;
}






}

// mysqli_query($conn, $query)
//or die("error insert " . mysqli_error($conn));


  mysqli_close($conn); 


