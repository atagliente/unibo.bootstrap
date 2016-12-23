<?php
/**
 * Created by PhpStorm.
 * User: Antonio Tagliente
 * Date: 22.12.16
 * Time: 21:36
 */

    include 'secureConnection.php';
    sec_session_start();
    // Elimina tutti i valori della sessione.
    $_SESSION = array();
    // Recupera i parametri di sessione.
    $params = session_get_cookie_params();
    // Cancella i cookie attuali.
    setcookie(session_name(), '', time() - 42000, $params["path"], $params["domain"], $params["secure"], $params["httponly"]);
    // Cancella la sessione.
    session_destroy();
    header('Location: ../../Login/login.html');

?>