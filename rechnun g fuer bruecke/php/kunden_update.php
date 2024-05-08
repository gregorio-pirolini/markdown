<?php
include_once 'db_connect.php';
$serializedData = $_POST['data'];
parse_str($serializedData, $my_post);
$kId=$my_post['kundenNummer'];
        $institution=$my_post['institution'];
        $titel=$my_post['titel'];
        $vorname=$my_post['vorname'];
        $name=$my_post['name'];
        $strasse=$my_post['anschrift'];
        $plz=$my_post['plz'];
        $ort=$my_post['ort'];
        $mw=$my_post['sex'];
       if($mw=='m'){$moderw=1;}else if($mw=='w'){$moderw=0;}else{$moderw=3;};
        $mob=$my_post['mob'];
        $tel=$my_post['tel'];
        $email=$my_post['email'];
       $bemerkung=$my_post['bemerkung'];
 
//echo $query;

    
      
       
       
 $sql="UPDATE kunden "
         . "SET institution='$institution',".
            "titel='$titel',".
          "vorname='$vorname',".
          "name='$name',".
          "strasse='$strasse',".
          "plz='$plz',".
          "ort='$ort',".
         "mw='$moderw',".
          "mob='$mob',".
          "tel='$tel',".
          "email='$email',".
          "bemerkung='$bemerkung'".
         " where kId= $kId";
       
if ($conn->query($sql) === TRUE) {
 
      echo "Der Kunde: ". $vorname .' '. $name ." wurde erfolgreich geupdatet.";
      
   
    
    
    
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}


mysqli_close($conn); 


