<?php
/**
 * Created by PhpStorm.
 * User: Antonio Tagliente
 * Date: 25.12.16
 * Time: 21:34
 */

require ('Login.php');

$login = new Login();

$login->sec_session_start();

if($login->loginCheck() == true) {
    $login->writeDebugLog("Login ok");
} else {
    $login->writeDebugLog("Login wrong");
    session_destroy();
    header(StandardMessages::INSUCCESS_REDIRECT);
}

?>