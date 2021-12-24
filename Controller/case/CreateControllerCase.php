<?php
// Define variables and initialize with empty values
$firstName = $lastname = $address = $type = $marital = $nanid = $jobtit = "";
$firstName_err = $lastname_err = $address_err = $type_err = $marital_err = $nanid_err = $jobtit_err  = "";

// Processing form data when form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Validate name
    $first_name = trim($_POST["firstName"]);
    if (empty($first_name)) {
        $name_err = "Please enter a First Name.";
    } elseif (!filter_var($first_name, FILTER_VALIDATE_REGEXP, array("options" => array("regexp" => "/^[a-zA-Z\s]+$/")))) {
        $firstName_err = "Please enter a valid name.";
    } else {
        $firstName = $first_name;
    }

    $last_name = trim($_POST["lastName"]);
    if (empty($last_name)) {
        $name_err = "Please enter a Last Name.";
    } elseif (!filter_var($last_name, FILTER_VALIDATE_REGEXP, array("options" => array("regexp" => "/^[a-zA-Z\s]+$/")))) {
        $lastname_err = "Please enter a valid name.";
    } else {
        $lastname = $last_name;
    }
    // Validate address
    $input_address = trim($_POST["address"]);
    if (empty($input_address)) {
        $address_err = "Please enter an address.";
    } else {
        $address = $input_address;
    }

    $input_type = trim($_POST["type"]);
    if (empty($input_type)) {
        $type_err = "Please enter an Type.";
    } else {
        $type = $input_type;
    }

    $input_marital = trim($_POST["marital"]);
    if (empty($input_marital)) {
        $marital_err = "Please enter an Marital Status.";
    } else {
        $marital = $input_marital;
    }
    
    $input_nanid = trim($_POST["nanid"]);
    if (empty($input_nanid)) {
        $nanid_err = "Please enter the Nanational ID.";
    } elseif (!ctype_digit($input_nanid)) {
        $nanid_err = "Please enter a positive integer value.";
    } else {
        $nanid = $input_nanid;
    }
    $input_jobtit = trim($_POST["jobtit"]);
    if (empty($input_jobtit)) {
        $jobtit_err = "Please enter an Job Title.";
    } else {
        $jobtit = $input_jobtit;
    }
    // Check input errors before inserting in database
    if (empty($firstName_err) && empty($lastname_err)&& empty($address_err) && empty($type_err) && empty($marital_err) && empty($nanid_err) && empty($jobtit_err) ) {
        // Prepare an insert statement
        include_once 'C:/xampp/htdocs/Login_v1/Model/CreateCase.php';
        $creator = new CreateClass1();
        if ($creator->insertRecord($firstName, $lastname, $address , $type , $marital , $nanid , $jobtit )) {
            header("location: ../../index1.php");
        }
         else {
            echo "Something went wrong. Please try again later.";
        }
    }

    // Close connection
}