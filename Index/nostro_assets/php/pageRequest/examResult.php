<?php

require('../MakeOperationsOnDB.php');

$var = new MakeOperationsOnDB();

$sql = "SELECT exam.*, storyboard.vote, storyboard.prenotation FROM `storyboard` JOIN `test` ON storyboard.test___fk = test.numberID JOIN `exam` ON test.exam___fk = exam.numberID";

echo $var->getJSONFromQuery("exam", $sql);

?>