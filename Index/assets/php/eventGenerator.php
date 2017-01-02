<?php

if(isset($_POST['messageType']) && !empty($_POST['messageType'])) {

    switch ($_POST) {
        case StandardMessages::EXAM:
            putPrenotationEvent("test", "dumb text", 731579);
            break;
    }
}

function putPrenotationEvent($title, $description, $matricola) {
    DBConnection::getInstance()->getConnection()->query(INS_EVENT_QUERY);
    if (DBConnection::getInstance()->getConnection()->query('INSERT INTO `events`(`id`, `title`, `description`, `time_start`, `time_finish`, `matricola___fk`) VALUES ([],['.$title.'],['.$description.'],['.now().'],[],'.$matricola.')') === TRUE) {
        echo "New record created successfully";
    } else {
        echo "<script type=\"text/javascript\">alert(\"dio\")</script>";
    }
}

?>