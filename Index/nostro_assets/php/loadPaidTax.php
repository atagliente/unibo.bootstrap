<?php

require('MakeOperationsOnDB.php');

$var = new MakeOperationsOnDB();

$matricola = $var->getCurrentMatricola();

$sql = "SELECT t.descrizione, t.amount, t.delayFee, t.year, p.payDay FROM payment p , tax t WHERE p.tax___fk = t.numberID AND p.student___fk = $matricola";

echo $var->getJSONFromQuery("paidTax", $sql);

?>
