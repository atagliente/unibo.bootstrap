<?php

require('MakeOperationsOnDB.php');

$var = new MakeOperationsOnDB();

$matricola = $var->getCurrentMatricola();

$sql = "SELECT exam.cfu, exam.year FROM storyBoard JOIN test JOIN exam WHERE storyBoard.vote >= 18 AND storyBoard.test___fk = test.numberID AND test.exam___fk = exam.numberID";

echo $var->getJSONFromQuery("cfu_verbalizzati", $sql);

?>
