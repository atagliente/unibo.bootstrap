<?php

require('MakeOperationsOnDB.php');

$var = new MakeOperationsOnDB();

$matricola = $var->getCurrentMatricola();

$sql = "SELECT t.descrizione, t.dateOpen, t.dateClose, t.amount, t.delayFee, t.year FROM tax t WHERE t.numberID NOT IN (SELECT p.tax___fk FROM payment p WHERE p.student___fk = 123456)";
echo $var->getJSONFromQuery("notPaidTax", $sql);

?>
