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
      $conn = $dbConnection->getConnection();

      $sql = "SELECT matricola FROM studente WHERE fk_login = '$userEmail'";
      $result = $conn->query($sql);

      if($result->num_rows == 1) {
          while($row = $result->fetch_assoc()) {
              //echo $row["matricola"];
              $matricola = $row["matricola"];
          }
      } else {
          echo "errore 0 results";
      }

      $sql = "SELECT * FROM esami WHERE fk_studente = '$matricola'";
      $result = $conn->query($sql);

      $i = 0;
      $count = 0;

      if($result->num_rows > 0) {
          while($row = $result->fetch_assoc()) {

            //echo json_encode($row);


            foreach ($row as $value){
              //echo $value . " ";
              $riga[$i] = $value;
              $i = $i + 1;

            }



        //    echo $riga[0] . "  " . $riga[1] . "  " . $riga[2] . "  " . $riga[3] . "  " . $riga[4] . "  " . $riga[5] . "\n";
            $array_esami[$count] = $row;


            $array[$count] = $riga;
            $i = 0;
            $count = $count + 1;
          }
      } else {
          echo "errore 0 results";
      }

      //unica riga
      echo json_encode($riga);
    
    //  echo $array[0][0];
    //  echo $array_esami[0]["id_esame"];
    // echo $array;

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
