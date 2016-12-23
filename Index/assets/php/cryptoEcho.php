<?php
/**
 * Created by PhpStorm.
 * User: Antonio Tagliente
 * Date: 22.12.16
 * Time: 22:18
 */

// Recupero la password criptata dal form di inserimento.
$password = $_POST['password'];
// Crea una chiave casuale
$random_salt = hash('sha512', uniqid(mt_rand(1, mt_getrandmax()), true));
// Crea una password usando la chiave appena creata.
$password = hash('sha512', $password.$random_salt);

echo "La password cifrata per il test: " .$password;

?>