<?php
$User_id = $Pass ="";
if(isset($_GET["id"])  && !empty(trim($_GET["id"])))
{
    $id = trim($_GET["id"]);

    include_once '../Model/login.php';
    $reader = new login();

    if($row = $reader->readOneRecord($id))
    {
        $Pass = trim($_POST["pass"]);
        $pass = $row["Password"];

        $Pass = password_hash($pass, PASSWORD_DEFAULT);
        if($Pass == $pass)
        {
            echo ("check ok");
        }
        else
        {
            echo ("check not ok");
        }
    }
    else
    {
        echo "Something went wrong. Please try again later.";
    }
}
else
{
    // URL doesn't contain id parameter. Redirect to error page
    header("location: error.php");
    exit();
}