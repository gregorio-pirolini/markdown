<?php
$val=$_POST['datum'];



function makeToUnix($val){
    
//    echo $val.'</br>';
    if ($val=='0000-00-00'){return null;}else{
//    makeToUnix($arr[$i]['date']);
  $YMD= explode('-',$val);  
//  echo $YMD[0] .'-'.$YMD[1] .'-'.$YMD[2];
    echo mktime(0, 0, 0, $YMD[1], $YMD[2], $YMD[0]);
}



}

makeToUnix($val);