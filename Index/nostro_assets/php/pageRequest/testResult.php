<?php

require('../MakeOperationsOnDB.php');

$var = new MakeOperationsOnDB();

$sql = "SELECT test.*, teacher.firstName, teacher.lastName FROM `test` JOIN `storyboard` ON storyBoard.test___fk != test.numberID JOIN `teacher` ON test.numberID ==  JOIN `exam`  AND teacher.numberID = test.teacher___fk AND exam.numberID = exam___fk";

echo $var->getJSONFromQuery("test", $sql);

?>