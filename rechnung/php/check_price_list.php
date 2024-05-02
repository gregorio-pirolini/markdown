<?php
include_once 'db_connect.php';
$data = json_decode($_POST['data'],true);
$preisName = $data[0]['value'];
$item1 = $data[2]['value'];
$item2= $data[4]['value'];
$item3= $data[6]['value'];
$item4= $data[8]['value'];
$item5= $data[10]['value'];
$item6= $data[12]['value'];
$item7= $data[14]['value'];
$item8= $data[16]['value'];
$item9= $data[18]['value'];
$item10= $data[20]['value'];
$item11= $data[22]['value'];
$item12= $data[24]['value'];
$item13= $data[26]['value'];
$item14= $data[28]['value'];
$item15= $data[30]['value'];
$item16= $data[32]['value'];
$item17= $data[34]['value'];
$item18= $data[36]['value'];
$item19= $data[38]['value'];
$item20= $data[40]['value'];
$item21= $data[42]['value'];
$item22= $data[44]['value'];
$item23= $data[46]['value'];
$item24= $data[48]['value'];
$item25= $data[50]['value'];
$item26= $data[52]['value'];
$item27= $data[54]['value'];
$item28= $data[56]['value'];
$item29= $data[58]['value'];
$item30= $data[60]['value'];
$item31= $data[62]['value'];
$item32= $data[64]['value'];
$item33= $data[66]['value'];
$item34= $data[68]['value'];
$item35= $data[70]['value'];
$item36= $data[72]['value'];
$item37= $data[74]['value'];
$item38= $data[76]['value'];
$item39= $data[78]['value'];
$item40= $data[80]['value'];
$item41= $data[82]['value'];
$item42= $data[84]['value'];
$item43= $data[86]['value'];
$item44= $data[88]['value'];
$item45= $data[90]['value'];
$item46= $data[92]['value'];
$item47= $data[94]['value'];
$item48= $data[96]['value'];
$item49= $data[68]['value'];


$query = "SELECT preisId FROM preis WHERE preisName='$preisName' and stat='1'";
//  echo '$query=' .$query;
$result = mysqli_query($conn, $query); 
$msg = mysqli_num_rows($result);

if( $msg>0) {
         
$datensatz = mysqli_fetch_assoc($result);
mysqli_free_result($result);
//    print_r($datensatz);
$x =  $datensatz['preisId'];
echo $x;    
        
}else{


//$sql  = "insert into preis(preisName) VALUES ('goodnight2')" or die("select error" . mysqli_error($conn));
$sql="INSERT INTO preis (preisName,item1,item2,item3,item4,item5,item6,item7,item8,item9,item10,".
        "item11,item12,item13,item14,item15,item16,item17,item18,item19,item20,".
        "item21,item22,item23,item24,item25,item26,item27,item28,item29,item30,item31,item32,item33,item_34,item_35,item_36,item_37,item_38,item_39,item_40,item_41,item_42,item_43,item_44,item_45,item_46,item_47,item_48,item_49)". 
     "VALUES ( '$preisName', $item1,$item2,$item3,$item4,$item5,$item6,$item7,$item8,$item9,$item10,".
         "$item11,$item12,$item13,$item14,$item15,$item16,$item17,$item18,$item19,$item20 ,".
        "$item21,$item22,$item23,$item24,$item25,$item26,$item27,$item28,$item29,$item30 ,".
        "$item31,$item32,$item33,$item34,$item35,$item36,$item37,$item38,$item39,$item40,$item41,$item42,$item43,$item44,$item45,$item46,$item47,$item48,$item49)";
        
if (mysqli_query($conn, $sql) === TRUE) {
    echo "preice list ".strtoupper ($data[0]['value'])." was created successfully";
} else {
    echo "Erro000r: " . $sql . "<br>" . $conn->error;
}

         }
            
$conn->close();
           
             
       
      
    




  