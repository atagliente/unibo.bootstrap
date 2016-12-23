<?php
/**
 * Created by PhpStorm.
 * User: Antonio Tagliente
 * Date: 22.12.16
 * Time: 21:51
 */


include 'secureConnection.php';

require ('DBconfig.php');

sec_session_start();

define("TABLE_NAME", "Login");
define("QUERY", "SELECT * FROM ". TABLE_NAME ." WHERE (username=?) AND (password=?)");
define("SUCCESS_REDIRECT", "Location: ../../../Home/index.html");

if(isset($_POST['username'], $_POST['password'])) {
    $email = $_POST['username'];
    $password = $_POST['password']; // Recupero la password criptata.

    if(login($email, $password, $mysqli) == true) {
        // Login eseguito
        echo 'Success: You have been logged in!';
    } else {
        // Login fallito
        sec_session_start();
        // Elimina tutti i valori della sessione.
        $_SESSION = array();
        // Recupera i parametri di sessione.
        $params = session_get_cookie_params();
        // Cancella i cookie attuali.
        setcookie(session_name(), '', time() - 42000, $params["path"], $params["domain"], $params["secure"], $params["httponly"]);
        // Cancella la sessione.
        session_destroy();
        //header('Location: ../../Login/login.html');
    }
} else {
    // Le variabili corrette non sono state inviate a questa pagina dal metodo POST.
    echo 'Invalid Request';
}

?>