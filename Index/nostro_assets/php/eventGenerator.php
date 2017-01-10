<?php

require ('DBConnection.php');

if(isset($_POST['messageType']) && !empty($_POST['messageType'])) {

    switch ($_POST['messageType']) {
        case "examPrenotation":
            echo "Esame prenotato con scuccesso.";
            putPrenotationEvent(TRUE, 0, $_POST['value']);
            break;
    }
}

function putPrenotationEvent($prenotation, $vote, $testID)
{
    if (DBConnection::getInstance()->getConnection()->query("INSERT INTO `storyBoard`(`numberID`, `prenotation`, `vote`, `student___fk`, `test___fk`) VALUES ('','" . $prenotation . "','" . $vote . "',123456,'" . $testID . "')") === TRUE) {
        echo "New record created successfully";
    } else echo "non va";
}
?>