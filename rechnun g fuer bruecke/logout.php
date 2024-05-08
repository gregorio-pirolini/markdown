<?php
 require("php/db_connect.php");
if(empty($_SESSION['user']))
{
header("Location: login.php");
die("Redirecting to login.php");
}else{
unset($_SESSION['user']);
header("Location: login.php");
die("Redirecting to login.php");
}