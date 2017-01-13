<?php

require('../MakeOperationsOnDB.php');

$var = new MakeOperationsOnDB();

$sql = "SELECT * FROM `teacher` JOIN `teachingdoc` ON teacher.teacherID = teachingdoc.teacher___fk JOIN `exam` ON teacher.teacherID = exam.teacher___fk";

echo $var->getJSONFromQuery("teachings", $sql);

?>
