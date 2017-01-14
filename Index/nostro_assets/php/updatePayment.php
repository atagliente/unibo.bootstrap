<?php

require ('MakeOperationsOnDB.php');

if(isset($_POST['rata_ID'])) {

    $DBconn = DBConnection::getInstance()->getConnection();
    $var = new MakeOperationsOnDB();

    //get the biggest id in the db and creates an id with the value of the biggest id + 1
    $query = "SELECT max(numberID) AS maxID FROM payment";
    $result = $var->getJSONFromQuery("max", $query);
    $result = substr($result, 8);
    $result = substr($result, 0, -2);
    $obj = json_decode($result);
    $lastID = (int)$obj->{'maxID'};
    $nextID = 0;
    while($lastID >= $nextID){
      $nextID = $nextID + 1;
    }

    //gets the timezone and sets the current date
    $timezone = date_default_timezone_get();
    date_default_timezone_set($timezone);
    $paymentDate = date('Y-m-d', time());

    $matricola = $var->getCurrentMatricola();

    $rata_ID = (int)$_POST['rata_ID'];
    $query = "INSERT INTO `payment` (`numberID`, `payDay`, `tax___fk`, `student___fk`) VALUES ('" . $nextID . "', '" . $paymentDate . "', '" . $rata_ID . "', '" . $matricola . "')";
    $DBconn->query($query);

    //shows an "operation completed successfully" message
    $query = "SELECT descrizione FROM tax WHERE numberID = $rata_ID";
    $result = $var->getJSONFromQuery("max", $query);
    $result = substr($result, 8);
    $result = substr($result, 0, -2);
    $obj = json_decode($result);

    echo "pagamento " . $obj->{'descrizione'} . " avvenuto con successo";
}

?>
