<?php

/**
 * Created by PhpStorm.
 * User: Antonio Tagliente
 * Date: 25.12.16
 * Time: 14:27
 */

define("SERVER_NAME", "localhost");
define("USER_NAME","root");
define("PASSWORD","");
define("LOGIN_TABLE", "Login");
define("GET_USER_QUERY","SELECT * FROM ". LOGIN_TABLE ." WHERE (username=?)");
define("DATABASE","solUnibo");

class DBConnection
{
    private $_connection = null;
    private static $_instance = null;

    private function __construct()
    {
        $string = "";
        // Create connection
        $mysqli = new mysqli(SERVER_NAME, USER_NAME, PASSWORD, DATABASE);
        $this->_connection = $mysqli;
        // Check connection
        if ($mysqli ->connect_error) {
            $string = "Connection failed: " . $mysqli->connect_error;
            die($string);
            error_log($string, 0);
            throw new Exception($string);
        }
        if (!syslog( LOG_DEBUG, $string)) {
            throw  new Exception("Error - Not save into syslog: ".$string);
        }
    }

    public static function getInstance() {
        if(self::$_instance == null) {
            self::$_instance = new dbConnection();
        }
        return self::$_instance;
    }

    public function destructInstance() {
        $this->_connection->close();
        $this->_connection = null;
    }

    public function getUser($username) {
        $mysqli = $this->_connection;
        if (!$stmt = $mysqli->prepare(GET_USER_QUERY)) {
            $string = "Prepare failed: (" . $mysqli->errno . ") " . $mysqli->error;
            error_log($string, 0);
            throw new Exception($string);
        } else {
            if (!$stmt->bind_param("s", $username)) {
                $string = "Binding parameters failed: (" . $stmt->errno . ") " . $stmt->error;
                error_log($string, 0);
                throw new Exception($string);
            } else {
                if (!$stmt->execute()) {
                    $string = "Execute failed: (" . $stmt->errno . ") " . $stmt->error;
                    error_log($string, 0);
                    throw new Exception($string);
                }
            }
        }
        if (!($result = $stmt->get_result())) {
            $string = "Getting result set failed: (" . $stmt->errno . ") " . $stmt->error;
            error_log($string, 0);
            throw new Exception($string);
        }
        return $result;
    }

    /**
     * Private clone method to prevent cloning of the instance of the
     * *Singleton* instance.
     *
     * @return void
     */
    private function __clone()
    {
    }

    /**
     * Private unserialize method to prevent unserializing of the *Singleton*
     * instance.
     *
     * @return void
     */
    private function __wakeup()
    {
    }

}