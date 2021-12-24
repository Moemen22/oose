<?php

include_once 'Database.php';

class updateClass1 {

    //put your code here
    private $db;

    public function __construct() {
        echo 'created';
        $this->db = new Database();
        $this->link = $this->db->connectToDB();
    }

    public function update($firstName, $lastname, $address ,  $type , $marital , $nanid , $jobtit,$id) {
        $sql = "UPDATE case1 SET  Case_FirstName=?, Case_LastName=?, case_address=?, Case_Type=?, Case_MaritalStatus=?, Case_National_ID=?, Case_Job_Title=? WHERE case_id=?";

        if ($stmt = mysqli_prepare($this->link, $sql)) {
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "sssssssi",  $param_fstname, $param_lastname, $param_address ,$param_type, $param_marital , $param_nanid , $param_jobtit, $param_id);

            // Set parameters
            $param_address = $address;
            $param_fstname = $firstName;
            $param_lastname = $lastname;
            $param_type = $type;
            $param_marital = $marital;
            $param_nanid = $nanid;
            $param_jobtit = $jobtit;
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
