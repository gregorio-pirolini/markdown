<?php
include_once 'db_connect.php';
$bId = $_POST['bId'];
 
 
 
$query="INSERT INTO geloescht(bId, datum, kId2, rechnungsNummer, rl, preislisteName, item_1, item_2, item_3, item_4, item_5, item_6, item_7, item_8, item_9, item_10, item_11, item_12, item_13, item_14, item_15, item_16, item_17,
item_18,item_19,item_20,item_21,item_22,item_23,item_24,item_25,item_26,item_27,item_28,item_29,item_30,item_31,item_32,item_33,stat,porto,preis,buecher,portoGewuenscht)
SELECT b.bId, b.datum,b.kId2,b.rechnungsNummer,b.rl,b.preislisteName,
b.item_1,b.item_2,b.item_3,b.item_4,b.item_5,b.item_6,b.item_7,b.item_8,b.item_9,b.item_10,b.item_11,b.item_12,b.item_13,b.item_14,b.item_15,b.item_16,b.item_17,
b.item_18,b.item_19,b.item_20,b.item_21,b.item_22,b.item_23,b.item_24,b.item_25,b.item_26,b.item_27,b.item_28,b.item_29,b.item_30,b.item_31,b.item_32,b.item_33,b.stat,b.porto,b.preis,b.buecher,b.portoGewuenscht
FROM bestellung as b WHERE bId='$bId'";
     

 $result = $conn->query($query);      
if (!$result) {
    printf("Error: %s\n", mysqli_error($conn));
    exit();
}

else{
//echo  rechnung gelöscht;
    
   $del="DELETE FROM bestellung WHERE bId='$bId'";
    $resultDel = $conn->query($del);      
if (!$resultDel) {
    printf("Error: %s\n", mysqli_error($conn));
    exit();
}

else{
//echo  rechnung gelöscht;
    
}
    
 }
 
 
$conn->close();