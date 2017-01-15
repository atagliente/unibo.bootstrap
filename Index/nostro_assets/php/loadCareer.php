<?php

require('MakeOperationsOnDB.php');

$var = new MakeOperationsOnDB();

$matricola = intval($var->getCurrentMatricola());

$sql = "SELECT exam.cfu, exam.year FROM storyboard JOIN test JOIN exam WHERE storyboard.test___fk = test.numberID AND test.exam___fk = exam.numberID AND storyboard.student___fk = '".$matricola."' AND storyboard.vote >= 18";

echo $var->getJSONFromQuery("career", $sql);

?>
