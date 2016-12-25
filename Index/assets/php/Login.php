<?php

/**
 * Created by PhpStorm.
 * User: Antonio Tagliente
 * Date: 25.12.16
 * Time: 15:06
 */

require ('DBConnection.php');
require ('StandardMessages.php');

class Login
{
    private $_dbConnection;
    private $_encryptMethod = "AES-256-CBC";
    private $_key = "Ermete Trismegisto";
    private $_iv = "Prosopagnosia";
    public function __construct()
    {
        $this->_dbConnection = DBConnection::getInstance();
    }

    /**
     * @param $username
     * @param $password
     * @return null or query result
     */
    public function loginCheck($username, $password) {
        $result = $this->_dbConnection->getUser($username);
        if ($result->num_rows == 1) {
            $user = mysqli_fetch_array($result);
            if ($this->encrypt($password) == $user['password']) {
                return true;
            }   else {
                $this->writeAlertLog(StandardMessages::PW_WRONG);
                //$this->wrongAccessHandler();
            }
        } else {
            $this->writeDebugLog(StandardMessages::USER_WRONG);
        }
        return false;
    }

    public function writeDebugLog($string) {
        if (!syslog( LOG_DEBUG, $string)) {
            throw  new Exception("Error - Not save into syslog: ".$string);
        }
    }

    public function writeAlertLog($string) {
        if (!syslog( LOG_ALERT, $string)) {
            throw  new Exception("Error - Not save into syslog: ".$string);
        }
    }

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

    private function encrypt($string)
    {
        // hash
        $key = hash('sha256', $this->_key);
        // iv - encrypt method AES-256-CBC expects 16 bytes - else you will get a warning
        $iv = substr(hash('sha256', $this->_iv), 0, 16);
        $output = openssl_encrypt($string, $this->_encryptMethod, $key, 0, $iv);
        $output = base64_encode($output);
        return $output;
    }

    private function decrypt($string)
    {
        // hash
        $key = hash('sha256', $this->_key);
        // iv - encrypt method AES-256-CBC expects 16 bytes - else you will get a warning
        $iv = substr(hash('sha256', $this->_iv), 0, 16);
        $output = openssl_decrypt(base64_decode($string), $this->_encryptMethod, $key, 0, $iv);
        return $output;
    }

}

