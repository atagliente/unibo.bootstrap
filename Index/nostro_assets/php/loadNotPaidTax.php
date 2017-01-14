<?php

require('MakeOperationsOnDB.php');

$var = new MakeOperationsOnDB();

$matricola = $var->getCurrentMatricola();

$sql = "SELECT t.* FROM tax t WHERE t.numberID NOT IN (SELECT p.tax___fk FROM payment p WHERE p.student___fk = $matricola)";
echo $var->getJSONFromQuery("notPaidTax", $sql);

?>
