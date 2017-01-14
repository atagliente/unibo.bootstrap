<?php

require('MakeOperationsOnDB.php');

$var = new MakeOperationsOnDB();

$matricola = $var->getCurrentMatricola();

$sql = "SELECT year FROM student WHERE matricola = $matricola";

echo $var->getJSONFromQuery("courseYear", $sql);

?>
