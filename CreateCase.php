<?php
include_once 'Database.php';

class CreateClass1 
{
    private $db;

    public function __construct() {
        echo 'created';
        $this->db = new Database();
        $this->link = $this->db->connectToDB();
    }

    public function insertRecord($firstName, $lastname, $address ,  $type , $marital , $nanid , $jobtit ) {
        $sql = "INSERT INTO case1 (Case_FirstName, Case_LastName,Case_address,  Case_Type , Case_MaritalStatus , Case_National_ID , Case_Job_Title) VALUES (?, ?, ?, ?, ? , ?, ?)";
    
        if ($stmt = mysqli_prepare($this->link, $sql)) {
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "sssssss",   $param_fstname, $param_lastname,$param_address ,$param_type, $param_marital , $param_nanid , $param_jobtit);

            // Set parameters
            $param_address = $address;
            $param_fstname = $firstName;
            $param_lastname = $lastname;
            $param_type = $type;
            $param_marital = $marital;
            $param_nanid = $nanid;
            $param_jobtit = $jobtit;

            // Attempt to execute the prepared statement
            if (mysqli_stmt_execute($stmt)) {
                // Records created successfully. Redirect to landing page
                return true;
            } else {
                return false;
            }

            echo 'outside if';

            // Close statement
            mysqli_stmt_close($stmt);
            mysqli_close($this->link);
            return false;
        }
    }

}