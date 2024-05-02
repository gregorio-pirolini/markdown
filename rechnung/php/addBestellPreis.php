<?php
include_once 'db_connect.php';
$rechnungsNummer = filter_input(INPUT_POST, 'rechnungsNummer', FILTER_SANITIZE_STRING);
$preis= filter_input(INPUT_POST, 'preis', FILTER_SANITIZE_STRING);

if($preis==="15.00"){
    $preisId="normal";
    
}elseif($preis==="13.00"){$preisId="Verein";

}elseif($preis==="11.50"){$preisId="MS";

}elseif($preis==="0.00"){$preisId="frei";

}else{$preisId="ERROR";}

$sql="UPDATE bestellung ".
        "SET preislisteName='$preisId' ". 
        "WHERE rechnungsNummer='$rechnungsNummer'";

if ($conn->query($sql) === TRUE) {
    echo strtoupper ($rechnungsNummer)." wurde aktualisiert";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();