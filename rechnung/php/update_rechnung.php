<?php
include_once 'db_connect.php';
filter_input(INPUT_POST, 'kId2', FILTER_SANITIZE_STRING);
$bId= filter_input(INPUT_POST, 'bId', FILTER_SANITIZE_STRING);
$preisName= filter_input(INPUT_POST, 'preisName', FILTER_SANITIZE_STRING);
$rl= filter_input(INPUT_POST, 'lr', FILTER_SANITIZE_STRING);
$buecher= filter_input(INPUT_POST, 'buecher', FILTER_SANITIZE_STRING);
$porto= filter_input(INPUT_POST, 'porto', FILTER_SANITIZE_STRING);
$preis= filter_input(INPUT_POST, 'preis', FILTER_SANITIZE_STRING);
$data = json_decode(filter_input(INPUT_POST, 'data', FILTER_SANITIZE_STRING),true);


echo $bId.'/n'.$preisName.'/n'.$rl.'/n'.$buecher.'/n'.$porto.'/n'.$preis.'/n'.$data;

$conn->close();
