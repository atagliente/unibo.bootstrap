<?php

require ('DBConnection.php');

if(isset($_POST['messageType']) && !empty($_POST['messageType'])) {
    switch ($_POST['messageType']) {
        case "examPrenotation":
            echo "Esame prenotato con successo.";
                $sql = "SELECT exam.*, test.*,  storyboard.student___fk, storyboard.test___fk, storyboard.numberID as storyID FROM `storyboard` JOIN `test` ON storyboard.test___fk = test.numberID JOIN `exam` ON test.exam___fk = exam.numberID WHERE storyboard.test___fk = ".$_POST['numberID'];
                $result = DBConnection::getInstance()->getConnection()->query($sql);
                $row = mysqli_fetch_array($result);
                putPrenotationEvent("Appello prenotato",$row["title"],$row["dateStart"]." ".$row['time'],$row["dateFinish"],$row["student___fk"],$row["test___fk"]);
            break;
        case "examRet":
            if(isset($_POST['test___ID']) && !empty($_POST['test___ID'])) {
                $sql = "DELETE FROM `events` WHERE test___fk = '".$_POST['test___ID']."'";
                echo $sql;
                if(DBConnection::getInstance()->getConnection()->query($sql) == TRUE) {
                    echo "Ritirato dall'esame con successo.";
                } else echo "Errore in fase di salvataggio";
            } else echo "parameters error [save] ".$_POST['test___ID'];
    }
} else echo "parameters error";

function putPrenotationEvent($title, $description, $DataInizio, $DataFine, $student___fk, $test___fk)
{
    $query = "INSERT INTO `events`(`title`, `description`, `DataInizio`, `DataFine`, `student___fk`, `test___fk`) VALUES ('".$title."','".$description."','".$DataInizio."','".$DataFine."','".$student___fk."','".$test___fk."')";
    echo $query;
    if (DBConnection::getInstance()->getConnection()->query($query)) {

    } else echo "non va";
}
?>