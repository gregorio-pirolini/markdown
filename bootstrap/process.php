<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Process form data
    $text = $_POST['text'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $number = $_POST['number'];
    $checkbox = isset($_POST['checkbox']) ? 'Checked' : 'Not Checked';
    $radio = $_POST['radio'];
    
    // Handle file upload (if needed)
    if(isset($_FILES['file'])){
        $file_name = $_FILES['file']['name'];
        $file_tmp = $_FILES['file']['tmp_name'];
        move_uploaded_file($file_tmp, 'uploads/' . $file_name);
    }

    // Print the received data (you can customize this part)
    echo "Text: $text<br>";
    echo "Email: $email<br>";
    echo "Password: $password<br>";
    echo "Number: $number<br>";
    echo "Checkbox: $checkbox<br>";
    echo "Radio: $radio<br>";
    
    if(isset($_FILES['file'])){
        echo "Uploaded File: $file_name";
    }
} else {
    echo "Invalid Request";
}
?>
