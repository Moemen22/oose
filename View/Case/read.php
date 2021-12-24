
<!DOCTYPE html>
<?php
include_once 'C:/xampp/htdocs/Login_v1/Controller/case/readControllerCase.php';
?>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>View Record</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
        <style type="text/css">
            .wrapper{
                width: 500px;
                margin: 0 auto;
            }
        </style>
    </head>
    <body>
        <div class="wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <form action="C:/xampp/htdocs/Login_v1/Controller/case/readControllerCase.php" method="post">

                            <div class="page-header">
                                <h1>View Record</h1>
                            </div>
                            <div class="form-group">
                                <label>First Name</label>
                                <p class="form-control-static"><?php echo $row["Case_FirstName"]; ?></p>
                            </div>
                            <div class="form-group">
                                <label>Last Name</label>
                                <p class="form-control-static"><?php echo $row["Case_LastName"]; ?></p>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <p class="form-control-static"><?php echo $row["case_address"]; ?></p>
                            </div>
                            <div class="form-group">
                                <label>Type</label>
                                <p class="form-control-static"><?php echo $row["Case_Type"]; ?></p>
                            </div>
                            <div class="form-group">
                                <label>Marital Status</label>
                                <p class="form-control-static"><?php echo $row["Case_MaritalStatus"]; ?></p>
                            </div>
                            <div class="form-group">
                                <label>National ID</label>
                                <p class="form-control-static"><?php echo $row["Case_National_ID"]; ?></p>
                            </div>
                            <div class="form-group">
                                <label>Job Title</label>
                                <p class="form-control-static"><?php echo $row["Case_Job_Title"]; ?></p>
                            </div>
                            <p><a href="../../index1.php" class="btn btn-primary">Back</a></p>
                        </form>
                    </div>
                </div>        
            </div>
        </div>
        
    </body>
</html>