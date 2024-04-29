<?php
include_once 'db_connect.php';
$data = filter_input(INPUT_POST, 'data', FILTER_SANITIZE_STRING); 
$id = filter_input(INPUT_POST, 'id', FILTER_SANITIZE_STRING); 

//$sql  = "UPDATE table_name SET column1=value1,column2=value2,...
//WHERE some_column=some_value;" or die("select error" . mysqli_error($conn));
$sql="UPDATE items ".
        "SET iName='$data' ". 
        "WHERE iId=$id";
       
       
if ($conn->query($sql) === TRUE) {
    echo strtoupper ($data)." wurde aktualisiert";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
