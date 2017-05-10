<?php 
    class DbConnect
    {
        private $conn;



        function __construct()
        {   
        }

        /*
        * Establish connection with database
        * @return database connnection handler
        */

        function connect()
        {
            require_once 'Config.php';

            //connecting to database
            $this->conn = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);

            //check for error
            if(mysqli_connect_errno())
            {
                echo "Failed to connect with mysql: " . mysqli_connect_errno();
            }

            //return the connection
            return $this->conn;
        }
    }

?>
