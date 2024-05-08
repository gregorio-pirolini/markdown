<?php
include_once 'db_connect.php';
$lrText = filter_input(INPUT_POST, 'lrText', FILTER_SANITIZE_STRING); 
$lrName = filter_input(INPUT_POST, 'lrName', FILTER_SANITIZE_STRING); 

//$sql  = "UPDATE table_name SET column1=value1,column2=value2,...
//WHERE some_column=some_value;" or die("select error" . mysqli_error($conn));
$sql="UPDATE lr ".
        "SET lrText='$lrText' ". 
        "WHERE lrName='$lrName'";
       
       
if ($conn->query($sql) === TRUE) {
    echo strtoupper ($lrName)." wurde aktualisiert";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
