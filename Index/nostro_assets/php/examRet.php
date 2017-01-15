<?php

require ('DBConnection.php');

if(isset($_POST['numberID'])) {
    $numberID = $_POST['numberID'];
    $query = "UPDATE `storyboard` SET `prenotation` = 0 WHERE storyboard.test___fk = " . $numberID;
    echo $query;
    DBConnection::getInstance()->getConnection()->query($query);
}

?>