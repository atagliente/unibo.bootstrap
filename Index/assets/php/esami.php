<?php

//non funzia perchè userEmail e matricola vengono assegnati in seguito
//define("GET_MATRICOLA", "SELECT matricola FROM studente WHERE fk_login = '$userEmail'");
//define("GET_ESAMI", "SELECT * FROM esami WHERE fk_studente = '$matricola'");


require('MakeOperationsOnDB.php');

$var = new MakeOperationsOnDB();

$matricola = $var->getCurrentMatricola();

$sql = "SELECT * FROM esami WHERE fk_studente = '$matricola'";

echo $var->getJSONFromQuery("esami", $sql);

//echo '{"' . $matricola . '":[';

/*
require ('Login.php');

$log = new Login();
$log->sec_session_start();
$userEmail = $_SESSION['username'];



$dbConnection = DBConnection::getInstance();
$conn = $dbConnection->getConnection();

$sql = "SELECT matricola FROM studente WHERE fk_login = '$userEmail'";
$result = $conn->query($sql);

if($result->num_rows == 1) {
    while($row = $result->fetch_assoc()) {
        $matricola = $row["matricola"];
    }
} else {
    echo "ERROR matricola selected does not exist or there are two matricole with the same value";
}

//------------------------------------------------------------------------------------

$sql = "SELECT * FROM esami WHERE fk_studente = '$matricola'";
$result = $conn->query($sql);


$text = '{"esami":[';

if($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $text = $text . json_encode($row) . ',';
    }
} else {
    echo "nessun esame disponibile";
}

$text = rtrim($text, ",") . ']}';
echo $text;*/

?>
