<?php

require ('DBConnection.php');

if(isset($_POST['numberID'])) {
    $numberID = $_POST['numberID'];
    $query = "UPDATE `storyboard` SET `prenotation` = 1 WHERE storyboard.test___fk = " . $numberID;
    echo 'record changed '. $query;
    DBConnection::getInstance()->getConnection()->query($query);
}

?>