<?php
/**
 * Created by PhpStorm.
 * User: Antonio Tagliente
 * Date: 22.12.16
 * Time: 22:18
 */

require ('Login.php');
$log = new Login();
// Recupero la password criptata dal form di inserimento.
$password = $_POST['password'];
$password = "";
echo "La password cifrata per il test: " .$password;

?>