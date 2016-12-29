<?php

/**
 * Created by PhpStorm.
 * User: Fabrizio
 * Date: 28-Dec-16
 * Time: 15:21
 */

 define("GET_MATRICOLA", "SELECT * FROM login WHERE username = antonio.tagliente@studio.unibo.it");

 require ('Login.php');

      $log = new Login();
      $log->sec_session_start();
      $userEmail = $_SESSION['username'];

      //$sql = "SELECT fk_login FROM login WHERE username = $userEmail";
      //$sql = "SELECT * FROM login WHERE username = antonio.tagliente@studio.unibo.it";


      $dbConnection = DBConnection::getInstance();


      $sql = "SELECT matricola FROM studente WHERE fk_login = '$userEmail'";
      $conn = $dbConnection->getConnection();
      $result = $conn->query($sql);

      if($result->num_rows == 1) {
          while($row = $result->fetch_assoc()) {
              //echo $row["matricola"];
              $matricola = $row["matricola"];
          }
      } else {
          echo "errore 0 results";
      }




/*
          $sql = "SELECT matricola FROM login, studente WHERE username = fk_login";
          $conn = $dbConnection->getConnection();
          $result = $conn->query($sql);

          if($result->num_rows > 0) {
              while($row = $result->fetch_assoc()) {
                  echo $row["matricola"] . "\n";
              }
          } else {
              echo "0 results";
          }
*/
/*
    $sql = "SELECT password FROM login WHERE username ";

    $conn = $dbConnection->getConnection();
    $result = $conn->query($sql);

    if($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            echo $row["password"] . "\n";
        }
    } else {
        echo "0 results";
    }

*/









?>
