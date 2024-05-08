<?php
include_once 'db_connect.php';

$institution = filter_input(INPUT_POST, 'institution', FILTER_SANITIZE_STRING);
$titel = filter_input(INPUT_POST, 'titel', FILTER_SANITIZE_STRING);
$vorname = filter_input(INPUT_POST, 'vorname', FILTER_SANITIZE_STRING);
$name = filter_input(INPUT_POST, 'name', FILTER_SANITIZE_STRING);
$strasse = filter_input(INPUT_POST, 'strasse', FILTER_SANITIZE_STRING);
$plz = filter_input(INPUT_POST, 'plz', FILTER_SANITIZE_STRING);
$ort = filter_input(INPUT_POST, 'ort', FILTER_SANITIZE_STRING);
$mw = filter_input(INPUT_POST, 'mw', FILTER_SANITIZE_STRING);
if($mw == "m"){
    $mw =1;
    
}else{
    $mw =0;};
$bemerkung = filter_input(INPUT_POST, 'bemerkung', FILTER_SANITIZE_STRING);
$email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_STRING);




 



function check_data($institution,$titel,$vorname,$name,$strasse,$plz,$ort,$mw,$bemerkung,$email) {

    
 
    $query = "SELECT kId FROM kunden WHERE vorname='$vorname' AND name ='$name' AND strasse='$strasse'";
//  echo '$query=' .$query;
$result = mysqli_query($conn, $query);  
    
     $msg = mysqli_num_rows($result);
       if( $msg>0) {
           $ergebnisse = array(
           'msg' => false,
            'name'  => $name . ' is already in data base'
           );
           $X = json_encode($ergebnisse);
                echo $X; 
        mysqli_close($conn);
       }else{
            $msg = true;
            
$ergebnisse = array(
'msg' =>  $msg,
'institution' =>$institution,  
'titel'=> $titel,
'vorname'=> $vorname,
'name'=> $name, 
'strasse'=> $strasse, 
'plz'=> $plz, 
'ort'=> $ort, 
'mw'=> $mw,
'bemerkung'=> $bemerkung,
'email' =>$email
);
//echo 'name: '.$name.' '.'<br>$email: '.$email.' '.'sub: ' .$sub.' '.'$text: ' .$text;
// send mail
    
    
$X = json_encode($ergebnisse);
echo $X; 
         
//         $query2 = "INSERT INTO kunden SET kNummer='$kNummer' where kId='$kId' "
           
             
       }
      
    
 
 }
// function add_kNummer($O) {
//
//    $conn = mysqli_connect(
//            $O->host, $O->user, $O->pass, $O->db)
//            or die("Error " . mysqli_error());
// 
//    $query ="SELECT MAX(kId) FROM kunden";
//  $result=mysqli_query($conn, $query);
//      $datensatz = mysqli_fetch_assoc($result);
//    mysqli_free_result($result);
////    print_r($datensatz);
//   $kId =  $datensatz['MAX(kId)'];
////     echo $kId;
//   $kNummer = $kId +1000;
//   
//   
//$query1 ="UPDATE kunden SET kNummer='$kNummer' WHERE kId='$kId'";
//mysqli_query($conn, $query1);
//print_r($query1);
//    
//  mysqli_close($conn);
//  echo $kNummer;
// }
//check if in db
check_data($institution,$titel,$vorname,$name,$strasse,$plz,$ort,$mw,$bemerkung,$email);

  