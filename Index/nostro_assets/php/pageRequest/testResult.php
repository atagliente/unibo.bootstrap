<?php

require('../MakeOperationsOnDB.php');

$var = new MakeOperationsOnDB();
$matricola = $var->getCurrentMatricola();

$sql = "SELECT exam.cfu, test.numberID as testID , test.*, teacher.firstName, teacher.lastName, storyboard.numberID as storyID, storyboard.vote, storyboard.prenotation, storyboard.student___fk FROM `storyboard` JOIN `test` ON storyboard.test___fk = test.numberID JOIN `exam` ON test.exam___fk = exam.numberID JOIN `teacher` ON exam.teacher___fk = teacher.numberID WHERE storyboard.student___fk = '".$matricola."'";

echo $var->getJSONFromQuery("test", $sql);

?>