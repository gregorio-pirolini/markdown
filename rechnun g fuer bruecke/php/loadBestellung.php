<?php
include_once 'db_connect.php';
$suche = filter_input(INPUT_GET, 'bestellung', FILTER_SANITIZE_STRING);
//$suche =1140;

$query0 = "CREATE OR REPLACE VIEW Ccustom AS".
" select b.*, l.lrName, p.preisName".
" from bestellung as b".
" join lr as l".
" on b.rl = l.lrId".
" join preis as p".
" on b.preislisteName = p.preisId".
" where b.bId=$suche" ;

 $result0 = $conn->query($query0);    
 
  
 
$query = "select * from Ccustom";
$result = $conn->query($query);


while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
      $gregsDate=strtotime($row['datum']);
       $found[] = array(
        'bId' => $row['bId'], 
        'datum' =>  $row['datum'], 
        'theDate' =>strftime("%#d  %B %Y", $gregsDate), 
        'kId2' => $row['kId2'],
        'rechnungsNummer' => $row['rechnungsNummer'], 
        'lrName' => $row['lrName'],
         'lr' => $row['rl'],
        'preisName' => $row['preisName'],
         'item_1' => $row['item_1'],
             'item_2' => $row['item_2'],
             'item_3' => $row['item_3'],
             'item_4' => $row['item_4'],
             'item_5' => $row['item_5'],
             'item_6' => $row['item_6'],
             'item_7' => $row['item_7'],
             'item_8' => $row['item_8'],
             'item_9' => $row['item_9'],
            'item_10' => $row['item_10'],
             'item_11' => $row['item_11'],
             'item_12' => $row['item_12'],
             'item_13' => $row['item_13'],
             'item_14' => $row['item_14'],
             'item_15' => $row['item_15'],
             'item_16' => $row['item_16'],
             'item_17' => $row['item_17'],
             'item_18' => $row['item_18'],
             'item_19' => $row['item_19'],
            'item_20' => $row['item_20'],
             'item_21' => $row['item_21'],
             'item_22' => $row['item_22'],
             'item_23' => $row['item_23'],
             'item_24' => $row['item_24'],
             'item_25' => $row['item_25'],
             'item_26' => $row['item_26'],
             'item_27' => $row['item_27'],
             'item_28' => $row['item_28'],
             'item_29' => $row['item_29'],
            'item_30' => $row['item_30'],
             'item_31' => $row['item_31'],
             'item_32' => $row['item_32'],
            'item_33' => $row['item_33'],
           'item_34' => $row['item_34'],
           'item_35' => $row['item_35'],
           'item_36' => $row['item_36'],
           'item_37' => $row['item_37'],
           'item_38' => $row['item_38'],
           'item_39' => $row['item_39'],
           'item_40' => $row['item_40'],
           'item_41' => $row['item_41'],
           'item_42' => $row['item_42'],
           'item_43' => $row['item_43'],
           'item_44' => $row['item_44'],
           'item_45' => $row['item_45'],
           'item_46' => $row['item_46'],
           'item_47' => $row['item_47'],
           'item_48' => $row['item_48'],
           'item_49' => $row['item_49'],
        'preislisteName' => $row['preislisteName'],
        'porto' => $row['porto'],
           'portoGewuenscht' => $row['portoGewuenscht'],
        'buecher' => $row['buecher'],
           'stat' => $row['stat'] 
          
      );
    
}

//array_push($found, $row);

//echo "New character set information:\n";
//print_r( $conn->get_charset() );
  echo json_encode($found);
//      
    mysqli_close($conn);
 
 