<?php

require('../MakeOperationsOnDB.php');

$var = new MakeOperationsOnDB();

$sql = "SELECT * FROM exam WHERE TRUE";

echo $var->getJSONFromQuery("exam", $sql);
alert("$var");

?>
