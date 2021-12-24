<?php

include_once 'Database.php';

class updateClass {

    //put your code here
    private $db;

    public function __construct() {
        echo 'created';
        $this->db = new Database();
        $this->link = $this->db->connectToDB();
    }

    public function update($name, $address,$email,$salary, $id) {
        $sql = "UPDATE manager SET Manager_First_Name=?,Manager_Last_Name = ?, Manager_Email=?, Manager_Phone_No=? WHERE Manager_ID=?";

        if ($stmt = mysqli_prepare($this->link, $sql)) {
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "ssssi", $param_name, $param_address, $param_email, $param_salary,$param_id);

            // Set parameters
            $param_name = $name;
            $param_address = $address;
            $param_email = $email;
            $param_salary = $salary;
            $param_id = $id;

            // Attempt to execute the prepared statement
            if (mysqli_stmt_execute($stmt)) {
                // Records updated successfully. Redirect to landing page
                return true;
            } else {
                return false;
            }
        }
         // Close statement
        mysqli_stmt_close($stmt);

        // Close connection
        mysqli_close($link);
        return false;
    }

}
