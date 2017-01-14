<?php

require('../MakeOperationsOnDB.php');

$var = new MakeOperationsOnDB();

$sql = "SELECT * FROM `teacher` JOIN `teachingdoc` ON teacher.numberID = teachingdoc.teacher___fk JOIN `exam` ON teacher.numberID = exam.teacher___fk ORDER BY `teachingdoc`.`teachingID` DESC";

echo $var->getJSONFromQuery("teachings", $sql);

?>
