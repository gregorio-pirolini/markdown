<?php 
echo strtotime("now"), "\n" ."<br/>";
echo strtotime("10 September 2000"), "\n" ."<br/>";
echo strtotime("+1 day"), "\n" ."<br/>";
echo strtotime("+1 week"), "\n" ."<br/>";
echo strtotime("+1 week 2 days 4 hours 2 seconds"), "\n" ."<br/>";
echo strtotime("next Thursday"), "\n" ."<br/>";
echo strtotime("last Monday"), "\n" ."<br/>";

echo strftime("%a %d %b %Y", strtotime(2015-05-02))."<br/>";
echo strftime("%A %d %B %Y", strtotime(2015-05-02))."<br/>";
 
echo strftime("%a %d %b %Y", strtotime("now"))."<br/>";
$originalDate = "2015-08-13";
$newDate = strftime("%A %d %B %Y",   strtotime($originalDate));
echo $newDate."<br/>";

echo '/////////////////////////////////////////';
echo setlocale(LC_ALL, 'DE').': ' ."<br/>";
echo strtotime("now")."<br/>";
echo date('Y-m-d', strtotime("now"))."<br/>";
echo date('m', strtotime("now"))."<br/>";
echo date('y', strtotime("now"))."<br/>";
 
echo strftime("%#d  %B %Y", strtotime( '2013-03-24'))."<br/>";

echo '/////////////////////////////////////////';
$toBecut= '002/0313';
echo strrpos ( $toBecut , '/' )."<br/>";
$pos=  strrpos ( $toBecut , '/' );
//string substr ( string $string , int $start [, int $length ] )

echo substr ( $toBecut , $pos  ,  strlen ( $toBecut )   )."<br/>";
echo substr ( $toBecut , 0  ,  $pos  )."<br/>";
 $toAdd=substr ( $toBecut , 0  ,  $pos  );
 $Added=$toAdd+1;
 echo $Added ."<br/>";
 echo $rechnungsNummer = $Added.'/'.date('m', strtotime("now")).date('y', strtotime("now"))."<br/>";
 
if (is_numeric('Rechnung - normal')) {
        echo "8 is numeric";
    } else {
        echo "8 is NOT numeric";
    }
?>
 