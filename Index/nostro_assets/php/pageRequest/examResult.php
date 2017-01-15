<?php

require('../MakeOperationsOnDB.php');

$var = new MakeOperationsOnDB();
$matricola = $var->getCurrentMatricola();

$sql = "SELECT exam.*, storyboard.vote, storyboard.prenotation FROM `storyboard` JOIN `test` ON storyboard.test___fk = test.numberID JOIN `exam` ON test.exam___fk = exam.numberID WHERE storyboard.student___fk = '".$matricola."'";

echo $var->getJSONFromQuery("exam", $sql);

?>