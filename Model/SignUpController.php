<?php
$FirstName = $LastName = $Email ="";
$FirstName_err = $LastName_err = $Email_err="";
$pass = $pass_err= "";
if($_SERVER["REQUEST_METHOD"] == "POST"){
    $input_pass = trim($_POST["pass"]);
    if(empty($input_pass))
    {
        echo ("check");
        $pass_err ="Please enter Password.";
    }
    else
    {
        echo ("pass");
        $pass = $input_pass;
    }

    $input_LastName = trim($_POST["LName"]);
    if(empty($input_LastName))
    {
        echo ('1');
        $LastName_err ="Please enter Last Name.";
    }
    else
    {
        echo ('2');

        $LastName = $input_LastName;
    }

    $input_FirstName = trim($_POST["FName"]);
    if(empty($input_FirstName))
    {
        echo ('3');

        $FirstName_err ="Please enter First Name.";
    }
    else
    {
        echo ('4');

        $FirstName = $input_FirstName;
    }

    $input_Email = trim($_POST["Email"]);
    if(empty($input_Email))
    {
        echo ('5');

        $FirstName_err ="Please enter Email.";
    }
    else
    {
        echo ('6');
        $Email = $input_Email;
    }
    if(empty($pass_err) && empty($Email_err) && empty($LastName_err)&& empty($FirstName_err))
    {
        echo ("tmm");
        include_once '../Model/Signup.php';
        $creator = new Signup();
        if($creator->insertRecord($Email,$FirstName,$LastName,$pass)){
            header("location: ../page1.php");
        }
        else
        {
            echo "Something went wrong. Please try again later";
        }
    }
}