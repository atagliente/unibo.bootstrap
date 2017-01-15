<?php

require ('MakeOperationsOnDB.php');

if(isset($_POST['title']) && isset($_POST['description']) && isset($_POST['dataInizio']) && isset($_POST['dataFine'])) {

    $var = new MakeOperationsOnDB();

    $title = $_POST['title'];
    $description = $_POST['description'];
    $dataInizio = $_POST['dataInizio'];
    $dataFine = $_POST['dataFine'];

    $yyyy = substr($dataInizio, 0, 4);
    $mm = substr($dataInizio, 5, -3);
    $dd = substr($dataInizio, 8);
    $query = "SELECT title FROM `events` WHERE year(dataInizio) = $yyyy AND month(dataInizio) = $mm AND day(dataInizio) = $dd";
    $result = $var->getJSONFromQuery("title", $query);


    if (!(strpos($result, 'Pagamento rata') !== false)) {
      $DBconn = DBConnection::getInstance()->getConnection();

      //get the biggest id in the db and creates an id with the value of the biggest id + 1
      $query = "SELECT max(id) AS maxID FROM events";
      $result = $var->getJSONFromQuery("max", $query);
      $result = substr($result, 8);
      $result = substr($result, 0, -2);
      $obj = json_decode($result);
      $lastID = (int)$obj->{'maxID'};
      $nextID = 0;
      while($lastID >= $nextID){
        $nextID = $nextID + 1;
      }

      $title = $_POST['title'];
      $description = $_POST['description'];
      $dataInizio = $_POST['dataInizio'];
      $dataFine = $_POST['dataFine'];
      $matricola = $var->getCurrentMatricola();
      $hourMinutesSeconds = date('H:i') . ":00";
      $query = "INSERT INTO `events` (`id`, `title`, `description`, `dataInizio`, `dataFine`, `student___fk`) VALUES ('" . $nextID . "', '" . $title . "', '" . $description . "', '" . $dataInizio . " " . $hourMinutesSeconds . "', 'NULL', '" . $matricola . "')";
      $DBconn->query($query);
    }
}

?>
