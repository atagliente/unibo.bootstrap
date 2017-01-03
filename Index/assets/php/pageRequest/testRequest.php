<?php

require('../MakeOperationsOnDB.php');

$var = new MakeOperationsOnDB();

$sql = "SELECT test.* FROM test WHERE test JOIN exam";

echo $var->getJSONFromQuery("test", $sql);

?>