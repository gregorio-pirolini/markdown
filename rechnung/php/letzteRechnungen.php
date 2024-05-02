<?php
include_once 'db_connect.php';



$query ='create or replace View $letzterechnung as 
select die_bestellung.bId, 
die_bestellung.datum, 
die_bestellung.kId2, 
die_bestellung.rechnungsNummer, 
der_kunde.kId, 
der_kunde.institution, 
der_kunde.titel, 
der_kunde.vorname, 
der_kunde.name, 
der_kunde.strasse, 
der_kunde.plz, 
der_kunde.ort, 
der_kunde.mw, 
der_kunde.mob, 
der_kunde.tel, 
der_kunde.email 
from bestellung as die_bestellung 
join kunden as der_kunde 
on die_bestellung.kId2 = der_kunde.kId
ORDER BY datum DESC LIMIT 20';

$dataAll=[];
 if ($conn->query($query) === TRUE){
    
   $query1 ='select * from $letzterechnung';
   $result1=$conn->query($query1);
     while($row = $result1->fetch_assoc()) {
                            $dataSingle=[];
                            $dataSingle['bId']=$row["bId"];
                            $dataSingle['datum']=$row["datum"];
                            $dataSingle['kId2']=$row["kId2"];
                            $dataSingle['rechnungsNummer']=$row["rechnungsNummer"];
                            $dataSingle['institution']=$row["institution"];
                            $dataSingle['titel']=$row["titel"];
                            $dataSingle['vorname']=$row["vorname"];
                            $dataSingle['name']=$row["name"];
                            $dataSingle['strasse']=$row["strasse"];
                            $dataSingle['ort']=$row["ort"];
                            $dataSingle['mob']=$row["mob"];
                            $dataSingle['tel']=$row["tel"];
                            $dataSingle['email']=$row["email"];
                            
                            array_push($dataAll,$dataSingle);
                            
                            
     }
    
    echo json_encode($dataAll);    
mysqli_close($conn); 
   return; 
    
    
}else {
    echo 'error :'.$query;
}
    
    




 
$conn->close();