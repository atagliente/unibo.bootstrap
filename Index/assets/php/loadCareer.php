<?php

require('MakeOperationsOnDB.php');

$var = new MakeOperationsOnDB();

$matricola = intval($var->getCurrentMatricola());

$sql = "SELECT exam.cfu, exam.year FROM storyBoard JOIN test JOIN exam WHERE storyBoard.test___fk = test.numberID AND test.exam___fk = exam.numberID AND storyBoard.student___fk = $matricola AND storyBoard.vote >= 18";

echo $var->getJSONFromQuery("career", $sql);

?>
