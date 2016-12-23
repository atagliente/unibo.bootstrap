<?php
/**
 * Created by PHP Storm.
 * User: Antonio Tagliente
 * Date: 22.12.16
 * Time: 15:30
 */

require("DBconfig.php");
include 'logout.php';

session_start();

define("TABLE_NAME", "Login");
define("QUERY", "SELECT * FROM ". TABLE_NAME ." WHERE (username=?) AND (password=?)");
define("SUCCESS_REDIRECT", "Location: ../../../Home/index.html");

if($_SERVER["REQUEST_METHOD"] == "POST") {
    // username and password sent from form

    $username=$_POST['username'];
    $password=$_POST['password'];

    if (! $stmt = $mysqli->prepare(QUERY) ) {
        echo "Prepare failed: (" . $mysqli->errno . ") " . $mysqli->error;
    } else {
        if (!$stmt->bind_param("ss", $username, $password)) {
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

    if ($result->num_rows == 1) {

        $row = $result->fetch_assoc();

        $_SESSION['username'] = $row["username"];
        $_SESSION['password'] = $row["password"];

        header(SUCCESS_REDIRECT);
    }
    else {
        return false;
    }
    //chiudo le connessioni create
    $result->close();
    $stmt->close();
    $mysqli->close();

}

?>