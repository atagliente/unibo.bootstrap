<?php

require('../MakeOperationsOnDB.php');

$var = new MakeOperationsOnDB();

$sql = "SELECT exam.*, storyBoard.vote, storyBoard.prenotation FROM `storyBoard` JOIN `test` ON storyBoard.test___fk = test.numberID JOIN `exam` ON test.exam___fk = exam.numberID";

echo $var->getJSONFromQuery("exam", $sql);

?>