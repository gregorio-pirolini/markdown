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
$item49= $data[98]['value'];

//$sql  = "UPDATE table_name SET column1=value1,column2=value2,...
//WHERE some_column=some_value;" or die("select error" . mysqli_error($conn));
$sql="UPDATE preis ".
        "SET item1=$item1,". 
        "item2=$item2,".
         "item3=$item3,".
         "item4=$item4,".
         "item5=$item5,".
         "item6=$item6,".
         "item7=$item7,".
         "item8=$item8,".
         "item9=$item9,".
         "item10=$item10,".
         "item11=$item11,".
         "item12=$item12,".
         "item13=$item13,".
         "item14=$item14,".
         "item15=$item15,".
         "item16=$item16,".
         "item17=$item17,".
         "item18=$item18,".
         "item19=$item19,".
         "item20=$item20,".
         "item21=$item21,".
         "item22=$item22,".
         "item23=$item23,".
         "item24=$item24,".
         "item25=$item25,".
         "item26=$item26,".
         "item27=$item27,".
         "item28=$item28,".
         "item29=$item29,".
         "item30=$item30,".
         "item31=$item31,".
         "item32=$item32,".
         "item33=$item33, ".
        "item_34=$item34, ".
        "item_35=$item35, ".
        "item_36=$item36, ".
        "item_37=$item37, ".
        "item_38=$item38, ".
        "item_39=$item39, ".
        "item_40=$item40, ".
        "item_41=$item41, ".
        "item_42=$item42, ".
        "item_43=$item43, ".
        "item_44=$item44, ".
        "item_45=$item45, ".
        "item_46=$item46, ".
        "item_47=$item47, ".
        "item_48=$item48, ".
        "item_49=$item49 ".
         "WHERE preisName='$preisName' and stat='1'";
       
       
if ($conn->query($sql) === TRUE) {
    echo "Preis Liste ".strtoupper ($data[0]['value'])." wurde aktualisiert.";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
