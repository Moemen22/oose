<?php
include_once 'Database.php';


class Signup
{
    private $db;
    public  function __construct(){
        $this->db = new Database();
        $this->link = $this->db->connectToDB();
    }

    public function insertRecord($Email,$FirstName,$LastName,$pass)
    {
        $pass = password_hash($pass, PASSWORD_DEFAULT);
        $sql = "INSERT INTO `user` (User_Email, User_First_Name, User_Last_Name, User_Password) VALUES ( ?, ?, ?, ?)";
        if($stmt = mysqli_prepare($this->link,$sql));
        {
            mysqli_stmt_bind_param($stmt,"ssss",$param_Email,$param_FirstName,$param_LastName,$param_pass);
            $param_pass = $pass;
            $param_LastName = $LastName;
            $param_FirstName = $FirstName;
            $param_Email = $Email;
            if(mysqli_stmt_execute($stmt))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        mysqli_stmt_close($stmt);
        mysqli_close($this->link);
    }
}

?>