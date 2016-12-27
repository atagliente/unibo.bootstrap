<?php
/**
 * Created by PhpStorm.
 * User: Antonio Tagliente
 * Date: 22.12.16
 * Time: 21:36
 */

    require ('Login.php');

    $login = new Login();
    header("location: ../../Login/login.html?msg=".$login->logout());

?>