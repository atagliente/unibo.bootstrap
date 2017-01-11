<?php

    require('../MakeOperationsOnDB.php');

    $var = new MakeOperationsOnDB();

    $sql = "SELECT exam.*, test.*, teacher.firstName, teacher.lastName, storyBoard.vote, storyBoard.prenotation FROM `storyBoard` JOIN `test` ON storyBoard.test___fk = test.numberID JOIN `exam` ON test.exam___fk = exam.numberID JOIN `teacher` ON exam.teacher___fk = teacher.numberID";

    echo $var->getJSONFromQuery("exam", $sql);

?>