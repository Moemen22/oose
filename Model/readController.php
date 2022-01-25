<?php
// Check existence of id parameter before processing further
if (isset($_GET["id"]) && !empty(trim($_GET["id"]))) {
    $id = trim($_GET["id"]);

    include_once '../Model/ReadClass.php';
    $reader = new ReadClass();
    if ($row = $reader->readOneRecord($id)) {
        $name = $row["Manager_First_Name"];
        $address = $row["Manager_Last_Name"];
        $email = $row["Manager_Email"];
        $salary = $row["Manager_Phone_No"];
    } else {
        echo "Something went wrong. Please try again later.";
    }
} else {
    // URL doesn't contain id parameter. Redirect to error page
    header("location: error.php");
    exit();
}
?>