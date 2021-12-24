<?php

include_once 'Database.php';

class CreateClass {

    private $db;

    public function __construct() {
        echo 'created';
        $this->db = new Database();
        $this->link = $this->db->connectToDB();
    }

    public function insertRecord($name, $address,$email, $salary) {
        $sql = "INSERT INTO manager (Manager_First_Name,Manager_Last_Name,Manager_Email,Manager_Phone_No) VALUES (?, ?, ?, ?)";
        if ($stmt = mysqli_prepare($this->link, $sql)) {
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "ssss", $param_name, $param_address,$param_email, $param_salary);

            // Set parameters
            $param_name = $name;
            $param_address = $address;
            $param_email = $email;
            $param_salary = $salary;
            
            // Attempt to execute the prepared statement
            if (mysqli_stmt_execute($stmt)) {
                // Records created successfully. Redirect to landing page
                return true;
            } else {
                return false;
            }
        }
        echo 'outside if';

        // Close statement
        mysqli_stmt_close($stmt);
        mysqli_close($this->link);
        return false;
    }

}
?>