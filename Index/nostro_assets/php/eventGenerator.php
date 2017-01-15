<?php

require ('DBConnection.php');

if(isset($_POST['messageType']) && !empty($_POST['messageType'])) {
    switch ($_POST['messageType']) {
        case "examPrenotation":
            echo "Esame prenotato con successo.";
                $sql = "SELECT exam.*, test.*,  storyboard.student___fk, storyboard.test___fk, storyboard.numberID as storyID FROM `storyboard` JOIN `test` ON storyboard.test___fk = test.numberID JOIN `exam` ON test.exam___fk = exam.numberID WHERE storyboard.test___fk = ".$_POST['numberID'];
                $result = DBConnection::getInstance()->getConnection()->query($sql);
                $row = mysqli_fetch_array($result);
                putPrenotationEvent($row["student___fk"].$_POST['numberID'],"Appello prenotato",$row["title"],$row["dateStart"]." ".$row['time'],$row["dateFinish"],$row["student___fk"]);
            break;
        case "examRet":
            if(isset($_POST['numberID']) && !empty($_POST['numberID'])) {
                $sql = "DELETE FROM `events` WHERE events.id = ".$_POST['numberID'];
                echo $sql;
                if(DBConnection::getInstance()->getConnection()->query($sql) == TRUE) {
                    echo "Ritirato dall'esame con successo.";
                } else echo "Errore in fase di salvataggio";
            } else echo "parameters error [save] ";
    }
} else echo "parameters error";

function putPrenotationEvent($numberID, $title, $description, $DataInizio, $DataFine, $student___fk)
{
    $query = "INSERT INTO `events`(`id`,`title`, `description`, `DataInizio`, `DataFine`, `student___fk`) VALUES ('".$numberID."','".$title."','".$description."','".$DataInizio."','".$DataFine."','".$student___fk."')";
    echo $query;
    if (DBConnection::getInstance()->getConnection()->query($query)) {

    } else echo "non va";
}
?>