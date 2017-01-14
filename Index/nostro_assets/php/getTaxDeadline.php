<?php

require('MakeOperationsOnDB.php');

$var = new MakeOperationsOnDB();

$matricola = intval($var->getCurrentMatricola());

$sql = "SELECT t.dateClose, t.descrizione FROM tax t  WHERE t.year = 3 AND t.numberID NOT IN (SELECT p.tax___fk FROM payment p WHERE p.student___fk = 123456) ORDER BY t.dateClose ASC";

echo $var->getJSONFromQuery("paymentDeadline", $sql);

?>
