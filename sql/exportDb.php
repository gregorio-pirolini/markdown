<?php
if (isset($_POST['export'])) {
    // Database connection
    $dbHost = 'your_host';
    $dbUser = 'your_username';
    $dbPass = 'your_password';
    $dbName = 'your_database';

    // Create a database dump
    exec("mysqldump -h$dbHost -u$dbUser -p$dbPass $dbName > database_dump.sql");

    // Provide a download link for the SQL dump
    header('Content-Type: application/octet-stream');
    header('Content-Disposition: attachment; filename="database_dump.sql"');
    readfile('database_dump.sql');
}
?>