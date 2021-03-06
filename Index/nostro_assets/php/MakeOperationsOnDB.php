<?php

require ('Login.php');

class MakeOperationsOnDB{

    private $dbConnection = null;
    private $conn = null;
    private $log = null;
    private $userEmail = null;

    public function __construct(){
      $this->dbConnection = DBConnection::getInstance();
      $this->conn = $this->dbConnection->getConnection();
      $this->log = new Login();
      $this->log->sec_session_start();
      $this->userEmail = $_SESSION['username'];
    }

    /*
      return the user's current matricola
    */
    public function getCurrentMatricola(){

      $sql = "SELECT matricola FROM student WHERE fk_login = '$this->userEmail'";
      $result = $this->conn->query($sql);

      if($result->num_rows == 1) {
          while($row = $result->fetch_assoc()) {
             $matricola = $row["matricola"];
          }
      } else {
          echo "ERROR matricola selected does not exist or there are two matricole with the same value";
      }
      return $matricola;
    }

    /*
      table_name: the name of the table
      sql: query sql
      return the table converted to JSON '{"table_name":[{"attribute1": "value1","attribute2": "value2", "attributeN":"valueN"}]}'
    */
    public function getJSONFromQuery($table_name, $sql){

      $result = $this->conn->query($sql);

      $text = '{"' . $table_name . '":[';

      if($result->num_rows > 0) {
          while($row = $result->fetch_assoc()) {
              $text = $text . json_encode($row) . ',';
          }
      } else {
          //la query non ha prodotto alcun risultato
      }

      $text = rtrim($text, ",") . ']}';
      return $text;
    }

    /*
      sql: query sql
      return the query result converted to JSON '[{"attribute1": "value1","attribute2": "value2", "attributeN":"valueN"}]'
    */
    public function convertQueryToCalendarFormat($sql){

      $result = $this->conn->query($sql);

      $text = '[';

      if($result->num_rows > 0) {
          while($row = $result->fetch_assoc()) {
              $text = $text . json_encode($row) . ',';
          }
      } else {
          //la query non ha prodotto alcun risultato
      }

      $text = rtrim($text, ",") . ']';
      return $text;
    }

    public function getMatricolaLogged() {
        return $this->userEmail;
    }
}


?>
