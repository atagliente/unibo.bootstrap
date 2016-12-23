<?php
/**
 * Created by PhpStorm.
 * User: Antonio Tagliente
 * Date: 22.12.16
 * Time: 21:21
 */

define("TABLE_NAME", "Login");
define("KEY","asdknvr89234/@.,èòùé*");
define("QUERY", "SELECT * FROM ". TABLE_NAME ." WHERE (username=?) AND (password=?) AND (salt=?)");
define("SUCCESS_REDIRECT", "Location: ../../../Home/index.html");

function sec_session_start() {
    $session_name = 'sec_session_id'; // Imposta un nome di sessione
    $secure = false; // Imposta il parametro a true se vuoi usare il protocollo 'https'.
    $httponly = true; // Questo impedirà ad un javascript di essere in grado di accedere all'id di sessione.
    ini_set('session.use_only_cookies', 1); // Forza la sessione ad utilizzare solo i cookie.
    $cookieParams = session_get_cookie_params(); // Legge i parametri correnti relativi ai cookie.
    session_set_cookie_params($cookieParams["lifetime"], $cookieParams["path"], $cookieParams["domain"], $secure, $httponly);
    session_name($session_name); // Imposta il nome di sessione con quello prescelto all'inizio della funzione.
    session_start(); // Avvia la sessione php.
    session_regenerate_id(); // Rigenera la sessione e cancella quella creata in precedenza.
}

function login($username, $password, $salt, $mysqli) {
    if($_SERVER["REQUEST_METHOD"] == "POST") {
        // username and password sent from form

        echo crypt($password);

        if (!$stmt = $mysqli->prepare(QUERY)) {
            echo "Prepare failed: (" . $mysqli->errno . ") " . $mysqli->error;
        } else {
            if (!$stmt->bind_param("ss", $username, crypt($password, $salt))) {
                echo "Binding parameters failed: (" . $stmt->errno . ") " . $stmt->error;
            } else {
                if (!$stmt->execute()) {
                    echo "Execute failed: (" . $stmt->errno . ") " . $stmt->error;
                }
            }
        }

        if (!($result = $stmt->get_result())) {
            echo "Getting result set failed: (" . $stmt->errno . ") " . $stmt->error;
        }

        if ($result->num_rows == 1) { //access ok
            return true;
        }
        else { //access no
            return false;
        }
    }
}

function sha512($string, $salt) {
    return crypt($string, $salt);
}
