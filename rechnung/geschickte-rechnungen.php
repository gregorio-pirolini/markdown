<?php

    // First we execute our common code to connection to the database and start the session
    require("php/db_connect.php");
   
    // At the top of the page we check to see whether the user is logged in or not
    if(empty($_SESSION['user']))
    {
        // If they are not, we redirect them to the login page.
        header("Location: login.php");
        
        // Remember that this die statement is absolutely critical.  Without it,
        // people can view your members-only content without logging in.
        die("Redirecting to login.php");
    }
    
    // Everything below this point in the file is secured by the login system
    
    // We can display the user's username to them by reading it from the session array.  Remember that because
    // a username is user submitted content we must use htmlentities on it before displaying it to the user.
?>
<!DOCTYPE html>
<html lang="de">
    <head>
        <meta charset="UTF-8">
        <title>Rechnung</title>
        <link rel="icon" href="img/favicon.png" type="image/x-icon" />
        
        <script src="js/jquery-1.11.3.min.js"></script>
<!--         <script type="text/javascript" src='js/JavaScriptSpellCheck/include.js' ></script> -->
        <script src="js/geschickte-rechnungen.js"></script>
<!--        <script type="text/JavaScript" src="js/print.js"></script>-->
         <link rel="stylesheet" href="css/normalize.css"> 
         
        <link rel="stylesheet" href="css/main.css"> 
<!--        <script type='text/javascript'>
            $Spelling.UserInterfaceTranslation = "de"; //german User Interface.
            $Spelling.DefaultDictionary = "Deutsch"; //german Dictionary
           
      $Spelling.SpellCheckAsYouType('myTextArea');
       
       
 </script>-->
    
        <!--<input type="button" value="Spell Check" onclick="$Spelling.SpellCheckInWindow('myTextArea')" /></script>--> 

     </head>
     <style>
         table{width:auto;
         margin-left:10px;
         }
        table, th, td {
   border: 1px solid white;
   padding:5px;
   }
   tr:nth-child(even) {background: #CCC}

     </style>
         
    <body>
<div id="borderTop"></div>
<div id="center">
    
    <h1>geschickte Rechnungen</h1> 
    <div id="geschikte" style="background-color: white;">
        
        
    </div>
    
    
    
</div><!--center-->
</body>

</html>