<?php

require('../MakeOperationsOnDB.php');

$var = new MakeOperationsOnDB();

$sql = "SELECT test.*, teacher.firstName, teacher.lastName FROM `test` JOIN `teacher` JOIN `exam` WHERE teacher.numberID = test.teacher___fk AND exam.numberID = exam___fk";

echo $var->getJSONFromQuery("test", $sql);

?>