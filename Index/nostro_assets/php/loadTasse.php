<?php

require('MakeOperationsOnDB.php');

$var = new MakeOperationsOnDB();

$sql = "SELECT descrizione, dateOpen, dateClose, amount, delayFee, year FROM tax WHERE true";

echo $var->getJSONFromQuery("tax", $sql);

?>
