<?php

require ('DBConnection.php');

$dbConnection = DBConnection::getInstance();
$conn = $dbConnection->getConnection();

      $text = '{"exam":[';
      $sql = "SELECT * FROM exam WHERE TRUE";
      $result = $conn->query($sql);

if($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $text = $text . json_encode($row) . ',';
    }
} else {
    echo "nessun esame disponibile";
}

$text = rtrim($text, ",") . ']}';
echo $text;

?>
