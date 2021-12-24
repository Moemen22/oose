<?php
//$firstName = $lastname = $address = $type = $marital = $nanid = $jobtit
// Check existence of id parameter before processing further
if (isset($_GET["id"]) && !empty(trim($_GET["id"]))) {
    $id = trim($_GET["id"]);

    include_once '../../Model/Case/ReadCase.php';
    $reader = new ReadClass1();
    if ($row = $reader->readOneRecord($id)) {
        $firstName = $row["Case_FirstName"];
        $lastname = $row["Case_LastName"];
        $address = $row["case_address"];
        $type = $row["Case_Type"];
        $marital = $row["Case_MaritalStatus"];
        $nanid = $row["Case_National_ID"];
        $jobtit = $row["Case_Job_Title"];
    } else {
        echo "Something went wrong. Please try again later.";
    }
} else {
    // URL doesn't contain id parameter. Redirect to error page
    header("location: error.php");
    exit();
}
?>