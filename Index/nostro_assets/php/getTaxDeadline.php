<?php

require('MakeOperationsOnDB.php');

$var = new MakeOperationsOnDB();

$matricola = intval($var->getCurrentMatricola());

$query = "SELECT year FROM student WHERE matricola = $matricola";
$courseYear = $var->getJSONFromQuery("studentYear", $query);
$courseYear = substr($courseYear, 25, 1);

$sql = "SELECT t.dateClose, t.descrizione FROM tax t  WHERE t.year = $courseYear AND t.numberID NOT IN (SELECT p.tax___fk FROM payment p WHERE p.student___fk = $matricola) ORDER BY t.dateClose ASC";

echo $var->getJSONFromQuery("paymentDeadline", $sql);
?>
