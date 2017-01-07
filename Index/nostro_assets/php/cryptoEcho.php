<?php

require ('Login.php');
$log = new Login();

$password = $_POST['password'];
$password = "";
echo "La password cifrata per il test: " .$password;

?>