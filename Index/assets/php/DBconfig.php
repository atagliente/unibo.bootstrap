<?php
/**
 * Created by PhpStorm.
 * User: Antonio Tagliente
 * Date: 22.12.16
 * Time: 16:08
 */

    define("SERVER_NAME", "localhost");
    define("USER_NAME","root");
    define("PASSWORD","");
    define("DATABASE","solUnibo");

    // Create connection
    $mysqli = new mysqli(SERVER_NAME, USER_NAME, PASSWORD, DATABASE);

    // Check connection
    if ($mysqli ->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    echo "Connected successfully";

?>