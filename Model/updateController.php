<?php
// Include config file
// Define variables and initialize with empty values
$name = $address = $salary = $email = "";
$name_err = $address_err = $salary_err = $email_err = "";

// Processing form data when form is submitted
if (isset($_POST["id"]) && !empty($_POST["id"])) {
    echo 'post';

    // Get hidden input value
    $id = $_POST["id"];
    // Validate name
    $input_name = trim($_POST["firtname"]);
    if (empty($input_name)) {
        $name_err = "Please enter a name.";
    } elseif (!filter_var($input_name, FILTER_VALIDATE_REGEXP, array("options" => array("regexp" => "/^[a-zA-Z\s]+$/")))) {
        $name_err = "Please enter a valid name.";
    } else {
        $name = $input_name;
    }

    // Validate address address
    $input_address = trim($_POST["address"]);
    if (empty($input_address)) {
        $address_err = "Please enter an address.";
    } else {
        $address = $input_address;
    }

    $input_email = trim($_POST["email"]);
    if (empty($input_email)) {
        $email_err = "Please enter an email.";
    } else {
        $email = $input_email;
    }

    // Validate salary
    $input_salary = trim($_POST["phone"]);
    if (empty($input_salary)) {
        $salary_err = "Please enter the salary amount.";
    } elseif (!ctype_digit($input_salary)) {
        $salary_err = "Please enter a positive integer value.";
    } else {
        $salary = $input_salary;
    }

    // Check input errors before inserting in database
    if (empty($name_err) && empty($address_err) && empty($email_err) && empty($salary_err)) {
        // Prepare an update statement
        include_once '../Model/updateClass.php';
        $updator = new updateClass();
        if ($updator->update($name,$address,$email, $salary, $id)) {
            header("location: ../index1.php");
        } else {
            echo "Something went wrong. Please try again later.";
        }
        // Close statement
        mysqli_stmt_close($stmt);
    }

    // Close connection
    mysqli_close($link);
} else {

    // Check existence of id parameter before processing further
    if (isset($_GET["id"]) && !empty(trim($_GET["id"]))) {
        // Get URL parameter
        $id = trim($_GET["id"]);
        include_once '../Model/ReadClass.php';
        $reader = new ReadClass();
        if ($row = $reader->readOneRecord($id)) {
            $name = $row["Manager_First_Name"];
            $address = $row["Manager_Last_Name"];
            $email = $row["Manager_Email"];
            $salary = $row["Manager_Phone_No"];
        }
        else {
                    echo "Something went wrong. Please try again later.";

        }
    } else {
        // URL doesn't contain id parameter. Redirect to error page
        header("location: error.php");
        exit();
    }
}
?>
