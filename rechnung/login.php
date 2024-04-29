<?php
require("php/db_connect.php");
$submitted_username = '';
if(!empty($_POST))
{
        $query = "
            SELECT
                id,
                username,
                password,
                salt,
                email
            FROM users
            WHERE
                username = :username
        ";
 $query_params = array(
            ':username' => $_POST['username']
        );
        try
        {
            $stmt = $db->prepare($query);
            $result = $stmt->execute($query_params);
        }
        catch(PDOException $ex)
        {
die("Failed to run query: " . $ex->getMessage());
        }
$login_ok = false;
        $row = $stmt->fetch();
        if($row)
        {
            $check_password = hash('sha256', $_POST['password'] . $row['salt']);
            for($round = 0; $round < 65536; $round++)
            {
                $check_password = hash('sha256', $check_password . $row['salt']);
            }
             if($check_password === $row['password'])
            {
  $login_ok = true;
            }
        }
        if($login_ok)
        {
unset($row['salt']);
            unset($row['password']);
            $_SESSION['user'] = $row;
header("Location: http://localhost/rechnung/rechnung.php");
die("Redirecting to: rechnung.php");
}else{
print 'Login Failed.';
$submitted_username = htmlentities($_POST['username'], ENT_QUOTES, 'UTF-8');
}
}    
?>
<link rel="icon" href="img/favicon.png" type="image/x-icon" />
<link rel="stylesheet" href="css/login.css"> 
<h1 style="padding:1em; margin:0;">Login Rechnung</h1>
<center style="background-color:white">
<form action="login.php" method="post">
    <p style="background-color:white">Username:</p>
    <input type="text" name="username" value="<?php echo $submitted_username; ?>" />
    <br />
    <p style="background-color:white">Password:</p>
    <input type="password" name="password" value="" />
    <br /><br />
    <input type="submit" value="Login" />
</form>
<a href="logout.php" class="logMeOut">logout</a>
</center>