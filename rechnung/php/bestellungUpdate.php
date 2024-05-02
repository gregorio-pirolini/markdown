<?php //
include_once 'db_connect.php';
// 
$aData=[
        '$RechnungsNummer',
        '$aKk',
        '$aM1',
        '$aM2',
        '$aM3',
        '$aR1',
        '$aR2',
        '$aR3',
        '$aR4',
        '$aR5',
        '$aR6',
        '$aR7',
        '$aR8',
        '$aR9',
        '$a501',
        '$a502',
        '$a503',
        '$a504',
        '$a505',
        '$a506',
        '$a507',
        '$a508',
        '$a509',
        '$a510',
        '$a511',
        '$a512',
        '$aA1',
        '$aA2',
        '$aA3',
        '$aA4',
        '$aFd12',
        '$aPorto'
];

foreach ($data as $key => $value) {
 
     

            $aData[0]=$data[$key][0];
            $aData[1]=$data[$key][1];
            $aData[2]=$data[$key][2];
            $aData[3]=$data[$key][3];
            $aData[4]=$data[$key][4];
            $aData[5]=$data[$key][5];
            $aData[6]=$data[$key][6];
            $aData[7]=$data[$key][7];
            $aData[8]=$data[$key][8];
            $aData[9]=$data[$key][9];
            $aData[10]=$data[$key][10];
            $aData[11]=$data[$key][11];
            $aData[12]=$data[$key][12];
            $aData[13]=$data[$key][13];
            $aData[14]=$data[$key][14];
            $aData[15]=$data[$key][15];
            $aData[16]=$data[$key][16];
            $aData[17]=$data[$key][17];
            $aData[18]=$data[$key][18];
            $aData[19]=$data[$key][19];
            $aData[20]=$data[$key][20];
            $aData[21]=$data[$key][21];
            $aData[22]=$data[$key][22];
            $aData[23]=$data[$key][23];
            $aData[24]=$data[$key][24];
            $aData[25]=$data[$key][25];
            $aData[26]=$data[$key][26];
            $aData[27]=$data[$key][27];
            $aData[28]=$data[$key][28];
            $aData[29]=$data[$key][29];
            $aData[30]=$data[$key][30];
            $aData[31]=$data[$key][31];
            
 
          
$query = "UPDATE bestellung SET "
            . "item_33='".  $aData[1]//kk
            . "', "
            . "item_1='".  $aData[2]//m1
            . "', "
            . "item_34='".  $aData[3]//m2 
            . "', "
            . "item_35='".  $aData[4]//m3 
            . "', "
            . "item_3='".  $aData[5]//r1
            . "', "
            . "item_36='".  $aData[6]//r2 
            . "', "
            . "item_37='".  $aData[7] //r3
            . "', "
            . "item_5='".  $aData[8]//r4
            . "', "
            . "item_7='".  $aData[9]//r5 
            . "', "
            . "item_38='".  $aData[10]//r6 
            . "', "
            . "item_39='".  $aData[11]//r7 
            . "', "
            . "item_9='".  $aData[12]//r8 
            . "', "
            . "item_11='".  $aData[13] //r9 
            . "', "
            . "item_4='".  $aData[14]//501
            . "', "
            . "item_40='".  $aData[15]//502
            . "', "
            . "item_41='".  $aData[16] //503
            . "', "
            . "item_6='".  $aData[17] //504
            . "', "
            . "item_8='".  $aData[18]//505
            . "', "
            . "item_42='".  $aData[19]//506
            . "', "
            . "item_43='".  $aData[20]//507
            . "', "
            . "item_10='".  $aData[21]//508
            . "', "
            . "item_12='".  $aData[22]//509
            . "', "
            . "item_14='".  $aData[23]//510
            . "', "
            . "item_16='".  $aData[24]//511
            . "', "
            . "item_44='".  $aData[25]//512
            . "', "
            . "item_45='".  $aData[26]//a1
            . "', "
            . "item_46='".  $aData[27]//a2
            . "', "
            . "item_47='".  $aData[28]//a3
             . "', "
            . "item_48='".  $aData[29]//a4
            . "', "
            . "item_49='".  $aData[30]//a1fd12
            ."', "
            . "portoGewuenscht='".  $aData[31]//porto
            . "' WHERE rechnungsNummer='$aData[0]'"
         ;
// echo '$query=' .$query;
// echo "<br/>";
//
//echo '/////////////////////////////////////////';
   mysqli_query($conn, $query)
             or die("error insert " . mysqli_error($conn));

}
  mysqli_close($conn); 



