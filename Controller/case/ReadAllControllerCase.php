<?php
require_once 'C:/xampp/htdocs/Login_v1/Model/Case/ReadCase.php';
$read = new ReadClass1();
$result = $read->readAll();
if (mysqli_num_rows($result) > 0) {
    echo "<table class='table table-bordered table-striped'>";
    echo "<thead>";
    echo "<tr>";
    echo "<th>#</th>";
    echo "<th>First Name</th>";
    echo "<th>Last Name</th>";
    echo "<th>Address</th>";
    echo "<th>Type</th>";
    echo "<th>Marital Status</th>";
    echo "<th>National ID</th>";
    echo "<th>Job Title</th>";
    echo "<th>Action</th>";
    echo "</tr>";
    echo "</thead>";
    echo "<tbody>";
    while ($row = mysqli_fetch_array($result)) {
        echo "<tr>";
        echo "<td>" . $row['case_id'] . "</td>";
        echo "<td>" . $row['Case_FirstName'] . "</td>";
        echo "<td>" . $row['Case_LastName'] . "</td>";
        echo "<td>" . $row['case_address'] . "</td>";
        echo "<td>" . $row['Case_Type'] . "</td>";
        echo "<td>" . $row['Case_MaritalStatus'] . "</td>";
        echo "<td>" . $row['Case_National_ID'] . "</td>";
        echo "<td>" . $row['Case_Job_Title'] . "</td>";
        echo "<td>";
        echo "<a href='View/Case/read.php?id=" . $row['case_id'] . "' title='View Record' data-toggle='tooltip'>
							<span class='glyphicon glyphicon-eye-open'></span>
						  </a>";
        echo "<a href='View/Case/update.php?id=" . $row['case_id'] . "' title='Update Record' data-toggle='tooltip'><span class='glyphicon glyphicon-pencil'></span></a>";
        echo "<a href='View/Case/delete.php?id=" . $row['case_id'] . "' title='Delete Record' data-toggle='tooltip'><span class='glyphicon glyphicon-trash'></span></a>";
        echo "</td>";
        echo "</tr>";
    }
    echo "</tbody>";
    echo "</table>";
    // Free result set
    mysqli_free_result($result);
} else {
    echo "<p class='lead'><em>No records were found.</em></p>";
}
?>