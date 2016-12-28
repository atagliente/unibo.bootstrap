<?php
/**
 * Created by PhpStorm.
 * User: Antonio Tagliente
 * Date: 25.12.16
 * Time: 21:34
 */

require ('Login.php');

$login = new Login();

if($login->loginCheck() == true) {
    $login->writeDebugLog("Login ok");
    echo "accept";
} else {
    $login->writeDebugLog("Login wrong");
    $login->logout();
    echo "../Login/login.html";
}

?>