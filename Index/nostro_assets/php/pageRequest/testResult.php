<?php

require('../MakeOperationsOnDB.php');

$var = new MakeOperationsOnDB();

$sql = "SELECT test.numberID as testID , test.*, teacher.firstName, teacher.lastName, storyboard.numberID as storyID, storyboard.vote, storyboard.prenotation FROM `storyboard` JOIN `test` ON storyboard.test___fk = test.numberID JOIN `exam` ON test.exam___fk = exam.numberID JOIN `teacher` ON exam.teacher___fk = teacher.numberID";

echo $var->getJSONFromQuery("test", $sql);

?>