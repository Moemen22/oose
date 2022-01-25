<?php
// Define variables and initialize with empty values
$name = $address = $salary = $email = "";
$name_err = $address_err = $salary_err = $email_err = "";

// Processing form data when form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Validate name
    $input_name = trim($_POST["name"]);
    if (empty($input_name)) {
        $name_err = "Please enter a name.";
    } elseif (!filter_var($input_name, FILTER_VALIDATE_REGEXP, array("options" => array("regexp" => "/^[a-zA-Z\s]+$/")))) {
        $name_err = "Please enter a valid name.";
    } else {
        $name = $input_name;
    }

    // Validate address
    $input_address = trim($_POST["address"]);
    if (empty($input_address)) {
        $address_err = "Please enter an address.";
    } else {
        $address = $input_address;
    }

    $input_email = trim($_POST["email"]);
    if (empty($input_email)) {
        $email_err = "Please enter an Email.";
    } else {
        $email = $input_email;
    }
    // Validate salary
    $input_salary = trim($_POST["salary"]);
    if (empty($input_salary)) {
        $salary_err = "Please enter the salary amount.";
    } elseif (!ctype_digit($input_salary)) {
        $salary_err = "Please enter a positive integer value.";
    } else {
        $salary = $input_salary;
    }

    // Check input errors before inserting in database
    if (empty($name_err) && empty($address_err)&& empty($email_err) && empty($salary_err)) {
        // Prepare an insert statement
        include_once '../Model/CreateClass.php';
        $creator = new CreateClass();
        if ($creator->insertRecord($name, $address, $email ,$salary)) {
            header("location: ../index1.php");
        } else {
            echo "Something went wrong. Please try again later.";
        }
    }

    // Close connection
}
?>