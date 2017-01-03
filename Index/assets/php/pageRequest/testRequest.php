<?php

require('../MakeOperationsOnDB.php');

$var = new MakeOperationsOnDB();

$sql = "SELECT test.* FROM test JOIN exam";

echo $var->getJSONFromQuery("test", $sql);

?>