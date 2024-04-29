<?php
include_once 'db_connect.php';
$serializedData = $_POST['data'];
parse_str($serializedData, $my_post);
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

    $query = "SELECT kId FROM kunden WHERE vorname='$vorname' and name='$name' and strasse='$strasse' and stat='1' ";
    $query1 = "SELECT kId FROM kunden WHERE email='$email' and stat='1' ";
    $sql="INSERT INTO kunden (institution,titel,vorname,name,strasse,plz,ort,mw,mob,tel,email,".
"bemerkung)". 
"VALUES ('$institution','$titel','$vorname','$name','$strasse','$plz','$ort','$moderw','$mob','$tel','$email',".
"'$bemerkung')";

//echo $sql;
//    echo   $query1;
    $result = mysqli_query($conn, $query);
   
if(mysqli_num_rows($result)>0){ 
    $row = mysqli_fetch_assoc($result);
    $x = $row['kId'];
    
     $X=[
        'message' => "Der Kunde: ". $vorname .' '. $name ." ist bereits gespeichert mit Kundennummer: ". $x .".",
        'kId'  => $x
        ];
       echo json_encode($X);
 return;
 
   
} 

if(  ($email !== '') && ($email !== NULL)  ){

    $result1 = mysqli_query($conn, $query1);
                if(mysqli_num_rows($result1 )>0){ 
                $row1 = mysqli_fetch_assoc($result1);
                $x = $row1['kId'];

                 $X=[
                'message' => "Die email: ". $email ." ist bereits gespeichert mit Kundennummer: ". $x .".",
                'kId'  => $x
                    ];
                echo json_encode($X);
 return; }
 
                  }
      
       
       
$sql="INSERT INTO kunden (institution,titel,vorname,name,strasse,plz,ort,mw,mob,tel,email,".
"bemerkung)". 
"VALUES ('$institution','$titel','$vorname','$name','$strasse','$plz','$ort','$moderw','$mob','$tel','$email',".
"'$bemerkung')";

 

$result2 = mysqli_query($conn, $sql);

        if ( $result2 === TRUE) {
        $query = "SELECT kId FROM kunden WHERE vorname='$vorname' and name='$name' and strasse='$strasse'";
        $result = mysqli_query($conn, $query);
        $row = mysqli_fetch_assoc($result);
        $x = $row['kId'];

        $X=['message' => "Der neue Kunde: ". $vorname .' '. $name ." wurde erfolgreich gespeichert.",
            'kId'  => $x
            ];

    
       echo json_encode($X);
 return;
    
        }else{ echo "Error: " . $sql . "<br>" . $conn->error;}

        
mysqli_close($conn);